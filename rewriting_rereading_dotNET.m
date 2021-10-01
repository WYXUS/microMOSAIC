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
dutyCycle = 0.95;        % duty cycle of the pulse generator
pixDwellTime = 2;       % microseconds
pixFreq = 1 / (pixDwellTime / 1000000 * 2);       % pixel acquisition frequency
pixRep = 20 ;       % pixel repetition 
scanXRange = 100;   % scan range X, um
scanYRange = 100;   % scan range Y, um
scanStep = 0.5;       % scan step, um
calibration = 0.0220;  % um to V conversion coefficient
% numberofPoints = scanXRange*scanYRange/ scanStep / scanStep;    % total number of points
x = -scanXRange/2:scanStep:scanXRange/2;        % x coordinates
y = -scanYRange/2:scanStep:scanYRange/2;        % y corrdiantes
numberofPoints = length(x)*length(y);
x = x + XCenter;    % x coordinates corrected with the image center
y = y + YCenter;    % y coordinates corrected with the image center
[X,Y] = meshgrid(x,y);
% coordPoints = [X(:)*calibration, Y(:)*calibration];    % voltages to send to the galvos
coordPoints = [repelem(X(:)*calibration,pixRep), repelem(Y(:)*calibration, pixRep)];    % voltages to send to the galvos
                           
% Setting up device objects
AOtask = NationalInstruments.DAQmx.Task;        % a task to control the galvos
AOtask.AOChannels.CreateVoltageChannel('/Dev2/ao0:1', '',-10, 10, AOVoltageUnits.Volts);    % output channels: the galvos
% AOtask.Stream.WriteRegenerationMode = WriteRegenerationMode.AllowRegeneration;
AOtask.Timing.ConfigureSampleClock('',pixFreq, SampleClockActiveEdge.Rising, SampleQuantityMode.FiniteSamples, pixRep*numberofPoints)    % a clock

AOtask.Control(TaskAction.Verify)   % check for task errors

AOwriter = AnalogMultiChannelWriter(AOtask.Stream);     % create a writer


AItask = NationalInstruments.DAQmx.Task;        % a task to control the galvos
AItask.AIChannels.CreateVoltageChannel('/Dev2/ai0', '', AITerminalConfiguration.Differential,-10, 10, AIVoltageUnits.Volts);    % output channels: the galvos
% AOtask.Stream.WriteRegenerationMode = WriteRegenerationMode.AllowRegeneration;
AItask.Timing.ConfigureSampleClock('',pixFreq, SampleClockActiveEdge.Rising, SampleQuantityMode.FiniteSamples, pixRep*numberofPoints)    % a clock

AItask.Control(TaskAction.Verify)   % check for task errors

AIreader= AnalogUnscaledReader(AItask.Stream);    % create a reader
% AOtask.Stream.Timeout=-1;
% COtask.Stream.Timeout=-1;
% CItask.Stream.Timeout=-1;

f = figure;
while ishandle(f)
% AItask.Start()
AOwriter.WriteMultiSample(true,coordPoints');   % write voltages to a galvo: triggers the aquisition
AOwriter.
% done = AOtask.WaitUntilDone()%int32(numberofPoints  * pixRep/ pixFreq * 3 * 1000))
% if done==true
try
rawData = double(AIreader.ReadInt32( pixRep*numberofPoints)); % get the data from the buffer
data = arrayfun(@(i) mean(rawData(i:i+pixRep-1)),1:pixRep:length(rawData)-pixRep+1)';   % average pixRep
size = round(sqrt(length(data)));       % define size
% figure(f);imagesc(reshape(data,[size,size])) ;colorbar     % reshape to 2D and display
axis image;
catch ME
    disp(ME.message)

end
% end
AOtask.Stop()
AItask.Stop();
end
%%
% delete(AIlistener);

AOtask.Dispose()
AItask.Dispose()

clear all