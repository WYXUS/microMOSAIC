function readCallback(source, event,readEvery)
global buffer;
global AIreader
    data1 = double(AIreader.ReadMultiSample(readEvery));
    buffer = [buffer data1];
    if length(buffer) > 10000
        buffer = buffer(end-10000:end);
    end
    
end