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


% Setting some properties
prop.AIrate = 1e6;                               % analog input sample rate in Hz
prop.AIrange = [-10 10];                           % analog input voltage range (2-element vector)
prop.AIchans = '/Dev2/ai0';%'/Dev2/ai0:1';                    % path to AI channels (primary DAQ card)                % cell array of AO channel paths. For a single AO card, this would be a 1-element cell, e.g. {'Dev1/ao0:1'}, for two cards, this could be {'Dev1/ao0:1', 'Dev2/ao0:2'}
prop.channelOrder = {[1 2]};                     % cell array of signal to channel assignments. Assign [X,Y,Z,Blank,Phase] signals (in that order, 1-based indexing) to output channels. To assign X to the first output channel, Y to the second, blank to the first of the second card and Z to the second of the second card, use {[1 2], [4 3]}. For a single output card, this could be e.g. {[1 2]}
prop.nsamples = 2000;
prop.buffersize = max([prop.nsamples*2 1000000]);
prop.buffersize = ceil(prop.buffersize/prop.nsamples)*prop.nsamples; % to make sure buffer size is an integer multiple of nsamples
           




try
AItask = NationalInstruments.DAQmx.Task;
AItask.AIChannels.CreateVoltageChannel(prop.AIchans, '', AITerminalConfiguration.Differential, prop.AIrange(1), prop.AIrange(2), AIVoltageUnits.Volts)
AItask.Timing.ConfigureSampleClock('OnBoardClock', prop.AIrate, SampleClockActiveEdge.Rising, SampleQuantityMode.ContinuousSamples, prop.buffersize)
AIreader = AnalogUnscaledReader(AItask.Stream);
data = double(AIreader.ReadInt32(1000));
plot(data)
catch ME
    disp(ME.message)
end
%%
AItask.Stop()
AItask.Dispose()


