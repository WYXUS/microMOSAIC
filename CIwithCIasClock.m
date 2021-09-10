%{
   % Acquire some signals using NIDAQ-mx's .NET assembly
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

% Setting some properties
prop.AOrate = 1e4;                                  % analog output sample rate in Hz (has to be divisor of AIrate)
prop.AOchans = {'/Dev2/ao0','/Dev2/ao1'};             % path to AI channels (primary DAQ card)                % cell array of AO channel paths. For a single AO card, this would be a 1-element cell, e.g. {'Dev1/ao0:1'}, for two cards, this could be {'Dev1/ao0:1', 'Dev2/ao0:2'}
prop.AOrange = 2*[-1 1];                            
prop.channelOrder = {[1 2]};                          % cell array of signal to channel assignments. Assign [X,Y,Z,Blank,Phase] signals (in that order, 1-based indexing) to output channels. To assign X to the first output channel, Y to the second, blank to the first of the second card and Z to the second of the second card, use {[1 2], [4 3]}. For a single output card, this could be e.g. {[1 2]}
prop.nsamples = 10;

% produce square pulses with ctr0, because PFI8 doesn't have a bnc connector
COTask = NationalInstruments.DAQmx.Task;
COTask.COChannels.CreatePulseChannelFrequency('/Dev2/ctr0', '', COPulseFrequencyUnits.Hertz, COPulseIdleState.Low, 0, 250000, 0.9 ); %delay, freq, dutycycle
COTask.Timing.ConfigureImplicit(SampleQuantityMode.ContinuousSamples,200000)
COTask.Control(TaskAction.Verify)

%meas pulse width with ctr2 @ PFI0
CITask = NationalInstruments.DAQmx.Task;
CIch = CITask.CIChannels.CreatePulseWidthChannel('/Dev2/ctr3', 'CItask',0,2^32-1,CIPulseWidthStartingEdge.Rising,CIPulseWidthUnits.Ticks);
% CIch = CITask.CIChannels.CreateCountEdgesChannel ('/Dev2/ctr2', 'CItask',CICountEdgesActiveEdge.Rising,int64(0),CICountEdgesCountDirection.Up);
CIch.PulseWidthTerminal = '/Dev2/PFI12';
CIch.CounterTimebaseSource = '/Dev2/PFI0';
CITask.Timing.ConfigureImplicit(SampleQuantityMode.FiniteSamples, 200000);
CITask.Control(TaskAction.Verify)
CIreader = CounterSingleChannelReader(CITask.Stream);

COTask.Start()
f = figure();
% while ishandle(f)
try
    tic;
    data = double(CIreader.ReadMultiSampleDouble(20000));
    toc;
    cla;
    plot(data);
    drawnow
catch ME
    disp(ME.message)
end
% end
COTask.Stop()
CITask.Stop()

COTask.Dispose()
CITask.Dispose()
