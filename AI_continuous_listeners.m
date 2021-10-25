NET.addAssembly('NationalInstruments.DAQmx');
import NationalInstruments.DAQmx.*
global buffer; buffer = [];
global AIreader ;
AItask = NationalInstruments.DAQmx.Task;
AItask.AIChannels.CreateVoltageChannel("/Dev2/ai0", '', AITerminalConfiguration.Rse, -10,10, AIVoltageUnits.Volts);
AItask.Timing.ConfigureSampleClock('',100,SampleClockActiveEdge.Rising,NationalInstruments.DAQmx.SampleQuantityMode.ContinuousSamples)

AIreader = AnalogSingleChannelReader(AItask.Stream);
readEvery = 100;
AItask.EveryNSamplesReadEventInterval = readEvery;
AItask.Stream.ConfigureInputBuffer(2 * readEvery);
AL = addlistener(AItask,'EveryNSamplesRead',@(src,event) readCallback(src,event,readEvery))
try
% data = double(AIreader.ReadMultiSample(100));
f = figure();ax = axes(f);
AItask.Start()
while ishandle(f)
    plot(ax,buffer);drawnow;pause(0.5)
end
catch ME
    disp(ME.message)
end
AItask.Stop(); AItask.Dispose()
