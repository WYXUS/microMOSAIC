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


% produce square pulses with ctr0, because PFI8 doesn't have a bnc connector
COtask = NationalInstruments.DAQmx.Task;
COtask.COChannels.CreatePulseChannelFrequency('/Dev2/ctr0', 'COtask', COPulseFrequencyUnits.Hertz, COPulseIdleState.Low, 0, 250000, 0.9 ); %delay, freq, dutycycle
COtask.Timing.ConfigureImplicit(SampleQuantityMode.FiniteSamples,pixRep*numberofPoints)
COtask.Triggers.ArmStartTrigger.ConfigureDigitalEdgeTrigger('/Dev2/ao/StartTrigger',DigitalEdgeArmStartTriggerEdge.Rising);   % set a trigger. The acquisition starts when the output writer start writing
COtask.Control(TaskAction.Verify)
%
%meas pulse width with ctr2 @ PFI0
CItask = NationalInstruments.DAQmx.Task;
CIch = CItask.CIChannels.CreatePulseWidthChannel('/Dev2/ctr3', 'CItask',0,2^32-1,CIPulseWidthStartingEdge.Rising,CIPulseWidthUnits.Ticks);
% CIch = CItask.CIChannels.CreateCountEdgesChannel ('/Dev2/ctr2', 'CItask',CICountEdgesActiveEdge.Rising,int64(0),CICountEdgesCountDirection.Up);
CIch.PulseWidthTerminal = '/Dev2/PFI12';
CIch.CounterTimebaseSource = '/Dev2/PFI0';

CItask.Timing.ConfigureSampleClock('',pixFreq, SampleClockActiveEdge.Rising, SampleQuantityMode.FiniteSamples,pixRep*numberofPoints);   % clock



CItask.Start()  % start in the background

AOwriter.WriteMultiSample(true,coordPoints');   % write voltages to a galvo
try
data = double(CIreader.ReadMultiSample( pixRep*numberofPoints)); 
catch ME
    disp(ME.message)
end



%%
% delete(AIlistener);
AOtask.Stop()
AOtask.Dispose()
CITask.Stop()
CITask.Dispose()