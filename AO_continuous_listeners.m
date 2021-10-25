NET.addAssembly('NationalInstruments.DAQmx');
import NationalInstruments.DAQmx.*
global buffer; buffer = [];
global AOwriter ;
AOtask = NationalInstruments.DAQmx.Task;
AOtask.AOChannels.CreateVoltageChannel("/Dev2/ao0", '', -10,10, AOVoltageUnits.Volts);
AOtask.Timing.ConfigureSampleClock('',200,SampleClockActiveEdge.Rising,NationalInstruments.DAQmx.SampleQuantityMode.ContinuousSamples)

AOwriter = AnalogSingleChannelWriter(AOtask.Stream);
writeEvery = 10000;
AOtask.EveryNSamplesWrittenEventInterval = writeEvery;
data = zeros(1,writeEvery);
AOtask.Stream.ConfigureOutputBuffer(2 * writeEvery);
AoL = addlistener(AOtask,'EveryNSamplesWritten',@(src,event) writeCallback(src,event,data));
try
% data = double(AIreader.ReadMultiSample(100));
f = figure();ax = axes(f);
AOwriter.WriteMultiSample(false,data);
AOtask.Start();

while ishandle(f)
    plot(ax,buffer);drawnow;pause(0.5)
end
catch ME
    disp(ME.message)
end
AOtask.Stop(); AOtask.Dispose()
