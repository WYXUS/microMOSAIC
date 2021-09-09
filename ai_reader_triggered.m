%{
    Acquire some signals using NIDAQ-mx's .NET assembly
%}

clear all


% Load NIDAQmx .NET assembly
fprintf('Starting up: loading DAQmx...\n')
try
    NET.addAssembly('NationalInstruments.DAQmx');
    import NationalInstruments.DAQmx.*
    fprintf('Assembly successfully loaded!\n')
catch
    error('Error loading .NET assembly! Check NIDAQmx .NET installation.')
end
XCenter = 0; YCenter = 0;       % image center

pixDwellTime = 2;       % us
pixFreq = 1 / (pixDwellTime / 1000000 * 2);       % pixel acquisition frequency
pixRep = 20 ;       % pixel repetition 
scanXRange = 100;   % scan range X, um
scanYRange = 100;   % scan range Y, um
scanStep = 1;       % scan step, um
calibration = 0.00484;  % um to V conversion coefficient
numberofPoints = scanXRange*scanYRange/ scanStep / scanStep;    % total number of points
x = -scanXRange/2:scanStep:scanXRange/2;        % x coordinates
y = -scanYRange/2:scanStep:scanYRange/2;        % y corrdiantes
x = x + XCenter;    % x coordinates corrected with the image center
y = y + YCenter;    % y coordinates corrected with the image center
[X,Y] = meshgrid(x,y);
coordPoints = [repelem(X(:)*calibration,pixRep), repelem(Y(:)*calibration, pixRep)];    % voltages to send to the galvos
                           
% Setting up device objects
AOtask = NationalInstruments.DAQmx.Task;
AOtask.AOChannels.CreateVoltageChannel('/Dev2/ao0:1', '',-10, 10, AOVoltageUnits.Volts);    % output channels: the galvos
% AOtask.Stream.WriteRegenerationMode = WriteRegenerationMode.AllowRegeneration;
AOtask.Timing.ConfigureSampleClock('',pixRep, SampleClockActiveEdge.Rising, SampleQuantityMode.FiniteSamples, pixRep*numberofPoints)    % a clock

AOtask.Control(TaskAction.Verify)   % control the task

AOwriter = AnalogMultiChannelWriter(AOtask.Stream);     % create a writer

% Setting some properties

prop.AIrange = [-10 10];                           % analog input voltage range (2-element vector)
prop.AIchans = '/Dev2/ai0';%'/Dev2/ai0:1';                    % path to AI channels (primary DAQ card)                % cell array of AO channel paths. For a single AO card, this would be a 1-element cell, e.g. {'Dev1/ao0:1'}, for two cards, this could be {'Dev1/ao0:1', 'Dev2/ao0:2'}

AItask = NationalInstruments.DAQmx.Task;
AItask.AIChannels.CreateVoltageChannel(prop.AIchans, '', AITerminalConfiguration.Rse, prop.AIrange(1), prop.AIrange(2), AIVoltageUnits.Volts);  % add voltage channel for analog input
AItask.Triggers.StartTrigger.ConfigureDigitalEdgeTrigger('/Dev2/ao/StartTrigger',DigitalEdgeStartTriggerEdge.Rising);   % set a trigger. The acquisition starts when the output writer start writing
AItask.Timing.ConfigureSampleClock('',pixFreq, SampleClockActiveEdge.Rising, SampleQuantityMode.FiniteSamples,pixRep*numberofPoints);   % clock
AIreader = AnalogSingleChannelReader(AItask.Stream);     % the input reader

% DaqSystem.Local.ConnectTerminals('/Dev2/ao/StartTrigger', '/Dev2/PFI6')


AItask.Start()  % start in the background
% AIlistener = addlistener(AItask, 'EveryNSamplesRead', @(~, ev) myCallback(AIreader.ReadMultiSample(prop.nsamples).double)); % Function is executed at each 'EveryNSamplesRead' event
AOwriter.WriteMultiSample(true,coordPoints');   % write voltages to a galvo
data = double(AIreader.ReadMultiSample( pixRep*numberofPoints));    % read the acquired values
plot(data)
%%
% delete(AIlistener);
AItask.Stop()
AItask.Dispose()
AOtask.Stop()
AOtask.Dispose()



