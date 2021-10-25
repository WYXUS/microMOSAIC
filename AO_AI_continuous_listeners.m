NET.addAssembly('NationalInstruments.DAQmx');
import NationalInstruments.DAQmx.*
global buffer; buffer = [];
global AIreader ;
AItask = NationalInstruments.DAQmx.Task;
AItask.AIChannels.CreateVoltageChannel("/Dev2/ai0", '', AITerminalConfiguration.Rse, -10,10, AIVoltageUnits.Volts);
AItask.Timing.ConfigureSampleClock('',1000,SampleClockActiveEdge.Rising,NationalInstruments.DAQmx.SampleQuantityMode.ContinuousSamples)

AIreader = AnalogSingleChannelReader(AItask.Stream);
readEvery = 1000;
AItask.EveryNSamplesReadEventInterval = readEvery;
AItask.Stream.ConfigureInputBuffer(5 * readEvery);
AL = addlistener(AItask,'EveryNSamplesRead',@(src,event) readCallback(src,event,readEvery))

global AOwriter ;
AOtask = NationalInstruments.DAQmx.Task;
AOtask.AOChannels.CreateVoltageChannel("/Dev2/ao0", '', -10,10, AOVoltageUnits.Volts);
AOtask.Timing.ConfigureSampleClock('',100,SampleClockActiveEdge.Rising,NationalInstruments.DAQmx.SampleQuantityMode.ContinuousSamples)

AOwriter = AnalogSingleChannelWriter(AOtask.Stream);
writeEvery = 10000;
AOtask.EveryNSamplesWrittenEventInterval = writeEvery;
step = 1000;
t = linspace(0, 2 * pi, step);
data = 5 * sin(t); data = repmat(data,[1, uint8(writeEvery / step)]);
AOtask.Stream.ConfigureOutputBuffer(2 * writeEvery);
AOtask.Stream.WriteRegenerationMode = NationalInstruments.DAQmx.WriteRegenerationMode.AllowRegeneration;
AoL = addlistener(AOtask,'EveryNSamplesWritten',@(src,event) writeCallback(src,event,data));

try
    AOwriter.WriteMultiSample(false,data);
% data = double(AIreader.ReadMultiSample(100));
f = figure();ax = axes(f);
AItask.Start();
AOtask.Start();
while ishandle(f)    
    plot(ax,buffer);drawnow;pause(0.5)
end
catch ME
    disp(ME.message)
end
AItask.Stop(); AItask.Dispose();AOtask.Stop(); AOtask.Dispose()
