classdef microMOSAIC < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        MatMicroMain                    matlab.ui.Figure
        TabGroup                        matlab.ui.container.TabGroup
        MainTab                         matlab.ui.container.Tab
        InitializeButton                matlab.ui.control.Button
        ReadyLampLabel                  matlab.ui.control.Label
        ReadyLamp                       matlab.ui.control.Lamp
        ScanSaveButton                  matlab.ui.control.Button
        ScanRangeXumEditFieldLabel      matlab.ui.control.Label
        ScanRangeXumEditField           matlab.ui.control.NumericEditField
        ScanRangeYumLabel               matlab.ui.control.Label
        ScanRangeYumEditField           matlab.ui.control.NumericEditField
        ScanResolutionumLabel           matlab.ui.control.Label
        ScanResolutionumEditField       matlab.ui.control.NumericEditField
        NumberOfAccumulationsEditFieldLabel  matlab.ui.control.Label
        NumberOfAccumulationsEditField  matlab.ui.control.NumericEditField
        TestbuttondontpressButton       matlab.ui.control.Button
        YourimagewillappearhereLabel    matlab.ui.control.Label
        LiveButton                      matlab.ui.control.StateButton
        SimulationmodeCheckBox          matlab.ui.control.CheckBox
        PolarPanel                      matlab.ui.container.Panel
        InitializePolarMotorButton      matlab.ui.control.Button
        CurrentAngledegrGaugeLabel      matlab.ui.control.Label
        CurrentAngledegrGauge           matlab.ui.control.SemicircularGauge
        StartingAngledegrEditFieldLabel  matlab.ui.control.Label
        StartingAngledegrEditField      matlab.ui.control.NumericEditField
        EndingAngledegrEditFieldLabel   matlab.ui.control.Label
        EndingAngledegrEditField        matlab.ui.control.NumericEditField
        StepAngledegrEditFieldLabel     matlab.ui.control.Label
        StepAngledegrEditField          matlab.ui.control.NumericEditField
        TakePolarStackButton            matlab.ui.control.Button
        FoVcenterXumEditFieldLabel      matlab.ui.control.Label
        FoVcenterXumEditField           matlab.ui.control.NumericEditField
        FoVcenterYumEditFieldLabel      matlab.ui.control.Label
        FoVcenterYumEditField           matlab.ui.control.NumericEditField
        ZoomPanel                       matlab.ui.container.Panel
        ZoomfactorEditFieldLabel        matlab.ui.control.Label
        ZoomfactorEditField             matlab.ui.control.NumericEditField
        ZoomInButton                    matlab.ui.control.Button
        ZoomOutButton                   matlab.ui.control.Button
        ChannelDropDownLabel            matlab.ui.control.Label
        ChannelDropDown                 matlab.ui.control.DropDown
        PixelRepetitionEditFieldLabel   matlab.ui.control.Label
        PixelRepetitionEditField        matlab.ui.control.NumericEditField
        LiveTab                         matlab.ui.container.Tab
        UIAxes                          matlab.ui.control.UIAxes
        FasterSliderLabel               matlab.ui.control.Label
        FasterSlider                    matlab.ui.control.Slider
        StartLiveButton                 matlab.ui.control.StateButton
        SlowerLabel                     matlab.ui.control.Label
        RefreshrateLabel                matlab.ui.control.Label
        ChannelForImagePixelSelectionDropDownLabel  matlab.ui.control.Label
        ChannelForImagePixelSelectionDropDown  matlab.ui.control.DropDown
        AutoscaleCheckBox_5             matlab.ui.control.CheckBox
        MaxEditFieldLabel               matlab.ui.control.Label
        MaxEditField                    matlab.ui.control.NumericEditField
        MinEditFieldLabel               matlab.ui.control.Label
        MinEditField                    matlab.ui.control.NumericEditField
        Button                          matlab.ui.control.StateButton
        SettingsTab                     matlab.ui.container.Tab
        ObjectiveDropDownLabel          matlab.ui.control.Label
        ObjectiveDropDown               matlab.ui.control.DropDown
        SessionUpdateRateHzEditFieldLabel  matlab.ui.control.Label
        SessionUpdateRateHzEditField    matlab.ui.control.NumericEditField
        DeviceNameEditFieldLabel        matlab.ui.control.Label
        DeviceNameEditField             matlab.ui.control.EditField
        FirstChannelSettingsPanel       matlab.ui.container.Panel
        Switch                          matlab.ui.control.Switch
        AnalogChannelInputDropDownLabel  matlab.ui.control.Label
        AnalogChannelInputDropDown      matlab.ui.control.DropDown
        ConnectiontypeDropDownLabel     matlab.ui.control.Label
        ConnectiontypeDropDown          matlab.ui.control.DropDown
        CounterChannelInputDropDownLabel  matlab.ui.control.Label
        CounterChannelInputDropDown     matlab.ui.control.DropDown
        minauEditFieldLabel             matlab.ui.control.Label
        minauEditField                  matlab.ui.control.NumericEditField
        maxauEditFieldLabel             matlab.ui.control.Label
        maxauEditField                  matlab.ui.control.NumericEditField
        AutoscaleCheckBox               matlab.ui.control.CheckBox
        NumberOfChannelsSliderLabel     matlab.ui.control.Label
        NumberOfChannelsSlider          matlab.ui.control.Slider
        SecondChannelSettingsPanel      matlab.ui.container.Panel
        Switch_2                        matlab.ui.control.Switch
        AnalogChannelInputDropDown_2Label  matlab.ui.control.Label
        AnalogChannelInputDropDown_2    matlab.ui.control.DropDown
        ConnectiontypeDropDown_2Label   matlab.ui.control.Label
        ConnectiontypeDropDown_2        matlab.ui.control.DropDown
        CounterChannelInputDropDown_2Label  matlab.ui.control.Label
        CounterChannelInputDropDown_2   matlab.ui.control.DropDown
        maxauEditField_2Label           matlab.ui.control.Label
        maxauEditField_2                matlab.ui.control.NumericEditField
        minauEditField_2Label           matlab.ui.control.Label
        minauEditField_2                matlab.ui.control.NumericEditField
        AutoscaleCheckBox_2             matlab.ui.control.CheckBox
        ThirdChannelSettingsPanel       matlab.ui.container.Panel
        Switch_3                        matlab.ui.control.Switch
        AnalogChannelInputDropDown_3Label  matlab.ui.control.Label
        AnalogChannelInputDropDown_3    matlab.ui.control.DropDown
        ConnectiontypeDropDown_3Label   matlab.ui.control.Label
        ConnectiontypeDropDown_3        matlab.ui.control.DropDown
        CounterChannelInputDropDown_3Label  matlab.ui.control.Label
        CounterChannelInputDropDown_3   matlab.ui.control.DropDown
        maxauEditField_3Label           matlab.ui.control.Label
        maxauEditField_3                matlab.ui.control.NumericEditField
        minauEditField_3Label           matlab.ui.control.Label
        minauEditField_3                matlab.ui.control.NumericEditField
        AutoscaleCheckBox_3             matlab.ui.control.CheckBox
        FourthChannelSettingsPanel      matlab.ui.container.Panel
        Switch_4                        matlab.ui.control.Switch
        AnalogChannelInputDropDown_4Label  matlab.ui.control.Label
        AnalogChannelInputDropDown_4    matlab.ui.control.DropDown
        ConnectiontypeDropDown_4Label   matlab.ui.control.Label
        ConnectiontypeDropDown_4        matlab.ui.control.DropDown
        CounterChannelInputDropDown_4Label  matlab.ui.control.Label
        CounterChannelInputDropDown_4   matlab.ui.control.DropDown
        maxauEditField_4Label           matlab.ui.control.Label
        maxauEditField_4                matlab.ui.control.NumericEditField
        minauEditField_4Label           matlab.ui.control.Label
        minauEditField_4                matlab.ui.control.NumericEditField
        AutoscaleCheckBox_4             matlab.ui.control.CheckBox
        PolarMotorPortEditFieldLabel    matlab.ui.control.Label
        PolarMotorPortEditField         matlab.ui.control.EditField
        TimeLagForPolarMotorsecEditFieldLabel  matlab.ui.control.Label
        TimeLagForPolarMotorsecEditField  matlab.ui.control.NumericEditField
        SavingSettingsTab               matlab.ui.container.Tab
        SavingfolderEditFieldLabel      matlab.ui.control.Label
        SavingfolderEditField           matlab.ui.control.EditField
        FilenameCommentEditFieldLabel   matlab.ui.control.Label
        FilenameCommentEditField        matlab.ui.control.EditField
        LogTextAreaLabel                matlab.ui.control.Label
        LogTextArea                     matlab.ui.control.TextArea
    end

    
    properties (Access = private)
        calibration % Description
        ax % array of uiaxes to display measured images
        imSession % daq session for imaging
        measSession
        scanXRange % X FoV, um
        scanYRange % Y FoV, um
        scanStep % resolution, um
        numberOfAccums % number of frames to average
        coordPoints % array of voltages to be sent to galvos for scanning
        signalData % measured data from imSession.foregroundAcquisition
        
        channelsData % array that stores all the info about channel i:
        % (i,1) - is used?
        % (i,2) - is Digital?
        % (i,3) - image is autoscaled
        % (i,4) - min scale
        % (i,5) - max scale
        NumberOfEnabledChannels % number of channels used
        minTextFields % Description
        maxTextFields % Description
        channelPannels
        autoScales
        
        digitalSwitches % Description
        analogChannelsInputFields
        counterChannelsInputFields
        analogChannelConnectionType
        URB_Ojt
        TimeLag % Description
        xFoVCenter % Description
        yFoVCenter
        DATA % Description
        ims % Description
        firstDraw % Description
        pixRepetition % Description
        lhIN % Description
        lhOUT
    end
    
    methods (Access = private)
        
        function grabData(app,~,event)
            buf = event.Data;
            size=int16(sqrt(length(buf(:,1)) / app.pixRepetition));
            signal = zeros(size,size,app.NumberOfEnabledChannels);
            
                
                for channel=1:app.NumberOfEnabledChannels
                    if app.channelsData(channel,2)== true
                        buf2 = [buf(1,channel); buf(1,channel) + diff(buf(:,channel))];                       
                        if app.pixRepetition>1
                            buf2 = downSampleImage(app,buf2,app.pixRepetition);
                        end

                    else
                        if app.pixRepetition>1
                            buf2 = downSampleImage(app,buf(:,channel),app.pixRepetition);
                        else
                            buf2=buf(:,channel);
                        end
                        
                    end
                    image = reshape(buf2,[size,size]);
                    signal(:,:,channel) = image;
                end


            
            
            
            
% % % % %             for channel=1:app.NumberOfEnabledChannels
% % % % %                 if app.channelsData(channel,2)== true
% % % % %                     buf2 = [buf(1,channel); diff(buf(:,channel))];
% % % % %                     image = reshape(buf2,[size,size]);
% % % % %                 else
% % % % %                     image = reshape(buf(:,channel),[size,size]);
% % % % %                 end
% % % % %                 signal(:,:,channel) = image;
% % % % %             end
            %             app.signalData = signal;
            
            drawImages(app, true,signal)
            app.firstDraw=false;
            % if length(buf) >1
            %     disp('Success')
            % end
        end
    
            function queueData(app,src,event)
                app.imSession.queueOutputData([ app.coordPoints(:,1) app.coordPoints(:,2)])
            end
        function [coordPoints] = GalvoCoordinatesForImage(app, scanXRange, scanYRange, scanStep, XCenter, YCenter, pixRep)
            %Takes X-Y range and step and creates the array of coordinates for glvo
            %mirrors
            if ~exist('pixRep', 'var')
                pixRep = 1;
            end
            x = -scanXRange/2:scanStep:scanXRange/2;
            y = -scanYRange/2:scanStep:scanYRange/2;
            x = x + XCenter;
            y = y + YCenter;
            [X,Y] = meshgrid(x,y);
            coordPoints = [repelem(X(:)*app.calibration,pixRep), repelem(Y(:)*app.calibration, pixRep)];
            
        end
        

        
        function [signal] =  NLimagingCoords(app, coordPoints,accumulation, pixRep)
            % Acquires a single image by scanning galvo mirrors at set FOV with set
            % precision
            
            app.imSession.IsContinuous = false;
            size = int32(sqrt(length(coordPoints(:,1))/pixRep));       % image size
            signal = zeros(size, size,app.NumberOfEnabledChannels);       % Array where signal data is stored
            
            for images=1:accumulation
                app.imSession.outputSingleScan([coordPoints(1,1) coordPoints(1,2)])     % if there is a time lag, this should account for it
                app.imSession.queueOutputData([coordPoints(:,1) coordPoints(:,2)]);         % send data to the DAQ card
                if sum(app.channelsData(1:app.NumberOfEnabledChannels,2))>0
                    resetCounters(app.imSession)
                end
                
                buf = app.imSession.startForeground();      % perform the scan
                
                for channel=1:app.NumberOfEnabledChannels
                    if app.channelsData(channel,2)== true
                        buf2 = [buf(1,channel); buf(1,channel) + diff(buf(:,channel))];                       
                        if pixRep>1
                            buf2 = downSampleImage(app,buf2,pixRep);
                        end

                    else
                        if pixRep>1
                            buf2 = downSampleImage(app,buf(:,channel),pixRep);
                        else
                            buf2=buf(:,channel);
                        end
                        
                    end
                    image = reshape(buf2,[size,size]);
                    signal(:,:,channel) = signal(:,:,channel) + image;
                end
            end
            signal = signal / accumulation ;        % normalize over number of accumulations
            app.imSession.outputSingleScan([0,0]);         % return to the image center
            app.imSession.IsContinuous = true;
        end
        
        function  printLogWindow(app, line)
            %            str = app.LogTextArea.Value+"\n" + line
            %             app.LogTextArea.Value = compose(str)
            line = datestr(now,'HH:MM')+" "+line;
            app.LogTextArea.Value =[line; app.LogTextArea.Value];
        end
        
        function results = setAxes(app, imSize)
            app.ax = [];
            app.ax =[app.ax uiaxes(app.MainTab,'Position',[0 imSize imSize imSize])];
            app.ax =[app.ax uiaxes(app.MainTab,'Position',[imSize imSize imSize imSize])];
            app.ax =[app.ax uiaxes(app.MainTab,'Position',[0 0 imSize imSize])];
            app.ax =[app.ax uiaxes(app.MainTab,'Position',[imSize 0 imSize imSize])];
            set(app.ax,'visible','off');
            axis(app.ax,'image');
            
            for axes=1:length(app.ax)                
                set(app.ax(axes), 'XTick',[], 'YTick',[]) %Fill the window
            end
        end
        
        
        function results = setChannelParameters(app)
            for i=1:app.NumberOfEnabledChannels
                app.channelsData()
            end
            
        end
        

        function drawImages(app,firstDraw,data)
            

            if firstDraw ==true
                app.ims=[];
            end
            for channel = app.NumberOfEnabledChannels:-1:1
                if firstDraw==true
                    minLim = min(data(:,:,channel),[],'all');
                    maxLim = max(data(:,:,channel),[],'all');
                    im =imshow(data(:,:,channel),[minLim maxLim],'Parent',app.ax(channel),'Colormap',parula(256));colorbar(app.ax(channel));%colormap(parula(256));pbaspect(app.ax(channel),[1,1,1]);                     
                    app.ims = [app.ims im];
                    if app.channelsData(channel,3) == false
                        caxis(app.ax(channel), [app.channelsData(channel,4) app.channelsData(channel,5)]);
                    else
                        %caxis(app.ax(channel), [min(min(app.signalData(:,:,channel))) max(max(app.signalData(:,:,channel)))]);
                        
                    end
                    
                else
                    maxLim = max(data(:,:,channel),[],'all');
                    set(app.ims(channel),'CData',data(:,:,channel));
                    %set(app.ax(channel),'Clim',[0 maxLim]);
                end
            end
            drawnow;

        end            
        function results = updateChannelInfo(app)
            for channel = 1 : app.NumberOfEnabledChannels
                
                if app.digitalSwitches(channel).Value=="Counter"
                    app.channelsData(channel,2) = true; % acquisition type: analog or counter channels
                else
                    app.channelsData(channel,2) = false;
                end
                app.channelsData(channel, 3) = app.autoScales(channel).Value;
                app.channelsData(channel, 4) =  app.minTextFields(channel).Value;
                app.channelsData(channel, 5) =  app.maxTextFields(channel).Value;
                
                
            end
            
        end
        
        function results = saveDataTiff(app, filenameComment, data)
            zcoordName="";
            if exist('stagePIFOC','var')
                zcoordName ='Z='+string(stagePIFOC.qPOS('A'));
            end
            logfolder  = app.SavingfolderEditField.Value;
            if ~exist(logfolder, 'dir')
                mkdir (logfolder); cd ..;
            end
            fullnameImage =logfolder+string(datetime('now','TimeZone','local','Format','HH-mm'))+'NLimage X='+string(app.scanXRange)+' Y='+ string(app.scanXRange)+'_'+app.scanStep+'_'+"pixRep_"+string(app.pixRepetition)+"_"+zcoordName;
            if (length(size(data)) == 3) | (length(size(data)) == 2)
                for channel=1:app.NumberOfEnabledChannels
                    printLogWindow(app,'Saving channel '    + string(channel-1))
                    if app.channelsData(channel,2)==false
                        saveTIFF32(app,(data(:,:,channel)),fullnameImage+filenameComment+'_chn'+string(channel-1)+'.tiff','a')
                    else
                        saveTIFF32(app,(data(:,:,channel)),fullnameImage+filenameComment+'_chn'+string(channel-1)+'.tiff','a')
                    end
                end
            elseif length(size(data)) == 4
                
                for channel =1 : app.NumberOfEnabledChannels
                    fullnameImage =logfolder+string(datetime('now','TimeZone','local','Format','HH-mm'))+'_ch'+string(channel-1)+'_NLimage X='+string(app.scanXRange)+' Y='+ string(app.scanXRange)+'_'+app.scanStep+'_'+string(zcoordName);
                    printLogWindow(app,'Saving channel ' + string(channel-1))
                    for slice=1:length(data(1,1,:,1))
                        if app.channelsData(channel,2)==false
                            saveTIFF32(app,(data(:,:,slice,channel)),fullnameImage+filenameComment+'_chn'+string(channel-1)+'.tiff','a')
                        else
                            saveTIFF32(app,(data(:,:,slice,channel)),fullnameImage+filenameComment+'_chn'+string(channel-1)+'.tiff','a')
                        end
                    end
                    
                end
            end
        end
        
        function results = setPolarAngle(app, angle)        % rotates the polar motor to the provided angle
            Command = "1pa"+string(angle);
            fprintf(app.URB_Ojt,Command);% 1pann: move to nn='0' angle absolute; pause(0.5);
            pause(app.TimeLag);       % give time to the motor to reach the new position - can be optimizaed
            app.CurrentAngledegrGauge.Value = angle;
            
        end
        
        
        function txt = localDcmFcn(~,event,ax)
            % Compute index
            idx = event.Target.CData(event.Position(2),event.Position(1));
            printLogWindow(app, idx(1))
            % Create output text
            txt = sprintf('[X,Y] [%d %d]\nIndex %d\n[R,G,B] [%.4g %.4g %.4g]', ...
                event.Position, idx, ax.Colormap(idx,:));
        end
        
        function [xcoord,ycoord] = selectGalvoPosition(app, channelNumber)
            xcoord=-1;ycoord=-1;
            if app.SimulationmodeCheckBox.Value == true
                image = magic(256);
            else
                app.signalData =NLimagingCoords(app ,app.coordPoints, app.numberOfAccums);
                image = app.signalData(:,:,channelNumber);
            end
            hFigForplotting = figure;
            tempAx = axes(hFigForplotting);
            imagesc(tempAx,image);pbaspect(tempAx,[1,1,1]);
            title(tempAx,"Select where to park the galvos");
            s = size(image);
            exitVar = (xcoord<0)|(xcoord>s(1))|(ycoord<0)|(ycoord>s(2));
            while exitVar==true
                [xcoord,ycoord] = ginput(1);
                xcoord = round(xcoord); ycoord = round(ycoord);
                printLogWindow(app,string(xcoord)+" "+string(ycoord));
                exitVar = (xcoord<0)|(xcoord>s(1))|(ycoord<0)|(ycoord>s(2));
                if exitVar ==false
                    break
                end
                printLogWindow(app,"Wrong input")
            end
            close(hFigForplotting)
            app.FoVcenterXumEditField.Value = -double(int16(app.scanXRange / app.scanStep)/2)*app.scanStep+double(xcoord)*app.scanStep;
            app.FoVcenterYumEditField.Value = -double(int16(app.scanYRange / app.scanStep)/2)*app.scanStep+double(ycoord)*app.scanStep;
        end
        
        function results = singleMeasurement(app)
            
            if sum(app.channelsData(1:app.NumberOfEnabledChannels,2))>0
                resetCounters(app.imSession)
            end
            results = app.imSession.inputSingleScan();
            
        end
        
        function results = zoomImage(app, zoomFactor)
            
            app.scanXRange = app.scanXRange / zoomFactor;
            app.scanYRange = app.scanYRange / zoomFactor;
            app.scanStep = app.scanStep / zoomFactor;
            app.ScanRangeXumEditField.Value = app.scanXRange;
            app.ScanRangeYumEditField.Value = app.scanYRange;
            app.ScanResolutionumEditField.Value = app.scanStep;
            
        end
        
        
        
        function data = downSampleImage(app,rawData, pixRep)                       
           data = arrayfun(@(i) mean(rawData(i:i+pixRep-1)),1:pixRep:length(rawData)-pixRep+1)';
        end
        
        function [] = saveTIFF32(app,data,fullFileName, mode)
%            'r'     open Tiff file for reading.
%            'w'     open Tiff file for writing; discard existing contents.
%            'w8'    open Tiff file for writing a BigTIFF file; discard 
%                    existing contents.
%            'a'     open or create Tiff file for writing; created files will 
%                    be in 32-bit Tiff format; any existing file format will
%                    be preserved; append image data to end of file
%            'r+'    open (do not create) Tiff file for reading and writing.
            if ~exist('mode','var')
                mode = 'w';
            end
            t = Tiff(fullFileName,mode);
            % Setup tags
            % Lots of info here:
            % http://www.mathworks.com/help/matlab/ref/tiffclass.html
            tagstruct.ImageLength     = size(data,1);
            tagstruct.ImageWidth      = size(data,2);
            tagstruct.Photometric     = Tiff.Photometric.MinIsBlack;
            tagstruct.Compression = Tiff.Compression.None;
            tagstruct.SampleFormat = Tiff.SampleFormat.IEEEFP;
            tagstruct.BitsPerSample   = 32;
            tagstruct.SamplesPerPixel = 1;
            % tagstruct.RowsPerStrip    = 16;
            
            tagstruct.PlanarConfiguration = Tiff.PlanarConfiguration.Chunky;
            tagstruct.Software        = 'MATLAB';
            t.setTag(tagstruct)
            t.write(single(data));
            t.close();
            
            
        end


    end
    methods (Access = public)
        

        
        function results = plotLiveChannels (app, rsc, event)
            persistent tempData;
            if isempty(tempData)
                tempData=[];
            end
            
            
            data=zeros(app.NumberOfEnabledChannels,1);
            buf = event.Data;
            for channel=1:app.NumberOfEnabledChannels
                if app.channelsData(channel,2)== true
                    
                    buf2 = [buf(1,channel); diff(buf(:,channel))];
                    data(channel,1) = mean(buf2);
                else
                    data(channel,1) = mean(buf);
                end
            end
            if app.AutoscaleCheckBox_5.Value == true
                ylim(app.UIAxes,[min(data)-0.1 max(data)+0.1]);
                bar(app.UIAxes, data);drawnow;
            else
                ylim(app.UIAxes,[app.MinEditField.Value app.MaxEditField.Value]);
                bar(app.UIAxes, data);drawnow;
            end
        end
    end
    

    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            app.minTextFields = [app.minauEditField app.minauEditField_2 app.minauEditField_3 app.minauEditField_4];
            app.maxTextFields = [app.maxauEditField app.maxauEditField_2 app.maxauEditField_3 app.maxauEditField_4];
            app.autoScales = [app.AutoscaleCheckBox app.AutoscaleCheckBox_2 app.AutoscaleCheckBox_3 app.AutoscaleCheckBox_4];
            app.digitalSwitches = [app.Switch app.Switch_2 app.Switch_3 app.Switch_4];
            app.channelPannels = [app.FirstChannelSettingsPanel app.SecondChannelSettingsPanel app.ThirdChannelSettingsPanel app.FourthChannelSettingsPanel];
            app.analogChannelsInputFields = [app.AnalogChannelInputDropDown app.AnalogChannelInputDropDown_2 app.AnalogChannelInputDropDown_3 app.AnalogChannelInputDropDown_4];
            app.analogChannelConnectionType = [app.ConnectiontypeDropDown app.ConnectiontypeDropDown_2 app.ConnectiontypeDropDown_3 app.ConnectiontypeDropDown_4];
            app.counterChannelsInputFields = [app.CounterChannelInputDropDown app.CounterChannelInputDropDown_2 app.CounterChannelInputDropDown_3 app.CounterChannelInputDropDown_4];
            app.channelsData = zeros(4,5);
            app.channelsData(1,1) = 1;
            value = app.TimeLagForPolarMotorsecEditField.Value;
            app.TimeLag = value;
        end

        % Button pushed function: InitializeButton
        function InitializeButtonPushed(app, event)
            %             app.ax=[]
            printLogWindow(app,"Initialization..");
            try
                app.calibration = str2double(app.ObjectiveDropDown.Value); %choose objective lens
                app.scanXRange = app.ScanRangeXumEditField.Value; % x FoV, um
                app.scanYRange = app.ScanRangeYumEditField.Value; % y FoV, um
                app.scanStep =app.ScanResolutionumEditField.Value; % resolution, um
                app.numberOfAccums =round( app.NumberOfAccumulationsEditField.Value); % number of frame repetitions
                app.pixRepetition = app.PixelRepetitionEditField.Value;
                app.xFoVCenter = app.FoVcenterXumEditField.Value;
                app.yFoVCenter = app.FoVcenterYumEditField.Value;
                
                app.NumberOfEnabledChannels = app.NumberOfChannelsSlider.Value;
                %             app.NumberOfChannelsSlider.Enable = false;
                app.NumberOfChannelsSliderValueChanged(app)
                app.NumberOfChannelsSlider.Enable = false;
                app.Switch.Enable = false;
                
                app.coordPoints = GalvoCoordinatesForImage(app,app.scanXRange, app.scanYRange, app.scanStep,app.xFoVCenter,app.yFoVCenter,app.pixRepetition);
                
                if app.SimulationmodeCheckBox.Value==false
                    app.imSession = daq.createSession('ni');        % session which controls galvos and acquired the signal - used to acquire raster-scan images
                    app.imSession.addAnalogOutputChannel(app.DeviceNameEditField.Value,'ao0', 'Voltage');      % galvo x
                    app.imSession.addAnalogOutputChannel(app.DeviceNameEditField.Value,'ao1', 'Voltage');      % galvo y
                    app.imSession.outputSingleScan([0 0])       % center galvos
                    app.imSession.Rate = app.SessionUpdateRateHzEditField.Value;         % rate at which galvos behave fine
                    for channel=1:app.NumberOfEnabledChannels
                        if app.channelsData(channel,2) == false
                            chImPMT= addAnalogInputChannel(app.imSession,app.DeviceNameEditField.Value,app.analogChannelsInputFields(channel).Value,'Voltage');
                            chImPMT.TerminalConfig = app.analogChannelConnectionType(channel).Value; % type of voltage measurement - single ended. CRUTIAL
                            printLogWindow(app,"Analog channel" + string(channel-1) + " is used")
                        else
                            addCounterInputChannel (app.imSession,app.DeviceNameEditField.Value,app.counterChannelsInputFields(channel).Value,'EdgeCount');
                            printLogWindow(app,"Counter channel" + string(channel-1) + " is used")
                        end
                        app.digitalSwitches(channel).Enable = false;
                        app.analogChannelsInputFields(channel).Enable = false;
                        app.counterChannelsInputFields(channel).Enable = false;
                        app.analogChannelConnectionType(channel).Enable = false;
                        
                        
                        
                    end
                    app.imSession.NotifyWhenScansQueuedBelow = round(length(app.coordPoints)*0.5 * app.pixRepetition);
                        app.lhOUT = addlistener(app.imSession,'DataRequired', @app.queueData);
                        app.imSession.IsContinuous = true; %needed to provide continuous behavior
%                         app.imSession.queueOutputData([ app.coordPoints(:,1) app.coordPoints(:,2)]); %queue the first frame
                        
                        % Pull in the data when the frame has been acquired
                        app.imSession.NotifyWhenDataAvailableExceeds=length(app.coordPoints(:,1)) * app.pixRepetition;
                        app.lhIN = addlistener(app.imSession,'DataAvailable', @app.grabData);
%                         prepare(app.imSession);
                else
                    printLogWindow(app,"Simulation mode")
                end
                app.firstDraw=true;
%                 app.imSession.startBackground;
                %             app.ax = uiaxes(app.MainTab,'Position',[8 52 400 400]);
                %             set(app.ax,'visible','off');
                app.LiveButton.Enable = true;
                app.ScanSaveButton.Enable = true;
                app.StartLiveButton.Enable = true;
                app.ReadyLamp.Color = 'Green';
                printLogWindow(app,"Initialization complete")
                app.InitializeButton.Enable = false;
                app.InitializePolarMotorButton.Enable = true;
                app.ZoomInButton.Enable = true;
                app.ZoomOutButton.Enable = true;
                app.ims = [];
            catch ME
                printLogWindow(app,"Could not initialize NI DAQ card! So sad..")
                printLogWindow(app, ME.message)
            end
        end

        % Button pushed function: ScanSaveButton
        function ScanSaveButtonPushed(app, event)
            saveTIFF = true; saveHDF5 = false;      % define in what formats the data will be saved
            
            if app.SimulationmodeCheckBox.Value==false
                signal = NLimagingCoords(app ,app.coordPoints, app.numberOfAccums,app.pixRepetition);
                %                 app.signalData = signal;
                
            else
                for channel=1: app.NumberOfEnabledChannels
                    buf =  rand(round(app.scanXRange/app.scanStep));
                    signal =buf.*10;
                    app.signalData(:,:,channel)  = signal;
                end
            end
            zcoordName="";
            if exist('stagePIFOC','var')
                zcoordName ='Z='+string(stagePIFOC.qPOS('A'));
            end
            drawImages(app,true,signal);
            if saveTIFF == true
                saveDataTiff(app,app.FilenameCommentEditField.Value,signal)
                
            elseif saveHDF5==true
                
            end
            printLogWindow(app,'NL image - Done')
        end

        % Button pushed function: TestbuttondontpressButton
        function TestbuttondontpressButtonPushed(app, event)
            RGB = magic(50);
            imSize = 350;
            for channel=1: app.NumberOfEnabledChannels
                    buf =  rand(round(app.scanXRange/app.scanStep));
                    app.signalData(:,:,channel) =buf.*10;
            end
                        tic;
            drawImages(app,true);
            printLogWindow(app,toc)
            tic;
            drawImages2(app,true, app.signalData)
            printLogWindow(app,toc)


%             printLogWindow(app,'test')
            

        end

        % Value changed function: LiveButton
        function LiveButtonValueChanged(app, event)
            value = app.LiveButton.Value;            
            if value==true
                app.imSession.queueOutputData([ app.coordPoints(:,1) app.coordPoints(:,1)]); %queue the first frame
                app.firstDraw=true;
                app.imSession.startBackground();
            else
                app.imSession.stop();
                app.imSession.release();
            end                     
        end

        % Close request function: MatMicroMain
        function MatMicroMainCloseRequest(app, event)
            % Close request function
            % to display a question dialog box
            selection = questdlg('You really want to exit?',...
                'Exit?',...
                'Yes','No','Yes');
            switch selection
                case 'Yes'
                    %           if exist('var', app.imSession)
                    %               app.imSession.stop;
                    %               stop(app.imSession);
                    %           end
                    delete(app)
                case 'No'
                    return
            end
            
            
        end

        % Value changed function: FoVcenterXumEditField, 
        % FoVcenterYumEditField, PixelRepetitionEditField, 
        % ScanRangeXumEditField, ScanRangeYumEditField, 
        % ScanResolutionumEditField
        function ScanRangeXumEditFieldValueChanged(app, event)
            %             value = app.ScanRangeXumEditField.Value;
            app.scanXRange = app.ScanRangeXumEditField.Value; % um
            app.scanYRange = app.ScanRangeYumEditField.Value; % um
            app.scanStep =app.ScanResolutionumEditField.Value; % um
            app.numberOfAccums = app.NumberOfAccumulationsEditField.Value;
            app.xFoVCenter = app.FoVcenterXumEditField.Value;
            app.yFoVCenter = app.FoVcenterYumEditField.Value;
            app.pixRepetition = app.PixelRepetitionEditField.Value;
            app.coordPoints = GalvoCoordinatesForImage(app,app.scanXRange, app.scanYRange, app.scanStep,app.xFoVCenter,app.yFoVCenter, app.pixRepetition);
            app.imSession.NotifyWhenScansQueuedBelow = round(length(app.coordPoints)*0.5);            
            app.imSession.NotifyWhenDataAvailableExceeds=length(app.coordPoints(:,1));
        end

        % Value changed function: Switch
        function SwitchValueChanged(app, event)

            if app.Switch.Value=="Counter"
                value = true;
            else
                value =false;
            end
            app.CounterChannelInputDropDown.Enable = value;
            app.CounterChannelInputDropDownLabel.Enable = value;
            app.AnalogChannelInputDropDown.Enable = ~value;
            app.AnalogChannelInputDropDownLabel.Enable = ~value;
            app.ConnectiontypeDropDown.Enable = ~value;
            app.ConnectiontypeDropDownLabel.Enable = ~value;
            updateChannelInfo(app)
        end

        % Value changed function: NumberOfChannelsSlider
        function NumberOfChannelsSliderValueChanged(app, event)
            value = app.NumberOfChannelsSlider.Value;
            [~,minIndex] = min(abs(value - app.NumberOfChannelsSlider.MajorTicks(:)));
            app.NumberOfChannelsSlider.Value = app.NumberOfChannelsSlider.MajorTicks(minIndex);
            value = app.NumberOfChannelsSlider.Value ;
            app.NumberOfEnabledChannels = value;
            for i=2:length(app.channelPannels)
                app.channelPannels(i).Visible = 0;
            end
            
            for i=1:value
                app.channelsData(i,1) = 1;
                app.channelPannels(i).Visible = 1;
            end
            updateChannelInfo(app)
            setAxes(app,350)
        end

        % Value changed function: Switch_2
        function Switch_2ValueChanged(app, event)
            updateChannelInfo(app)
            value = app.Switch_2.Value;
            
            if value=="Counter"
                value = true;
            else
                value =false;
            end
            app.CounterChannelInputDropDown_2.Enable = value;
            app.CounterChannelInputDropDown_2Label.Enable = value;
            app.AnalogChannelInputDropDown_2.Enable = ~value;
            app.AnalogChannelInputDropDown_2Label.Enable = ~value;
            app.ConnectiontypeDropDown_2.Enable = ~value;
            app.ConnectiontypeDropDown_2Label.Enable = ~value;

        end

        % Value changed function: Switch_3
        function Switch_3ValueChanged(app, event)
            updateChannelInfo(app)
            value = app.Switch_3.Value;
            if value=="Counter"
                value = true;
            else
                value =false;
            end
            app.CounterChannelInputDropDown_3.Enable = value;
            app.CounterChannelInputDropDown_3Label.Enable = value;
            app.AnalogChannelInputDropDown_3.Enable = ~value;
            app.AnalogChannelInputDropDown_3Label.Enable = ~value;
            app.ConnectiontypeDropDown_3.Enable = ~value;
            app.ConnectiontypeDropDown_3Label.Enable = ~value;
        end

        % Value changed function: Switch_4
        function Switch_4ValueChanged(app, event)
            updateChannelInfo(app)
            value = app.Switch_4.Value;
            if value=="Counter"
                value = true;
            else
                value =false;
            end
            app.CounterChannelInputDropDown_4.Enable = value;
            app.CounterChannelInputDropDown_4Label.Enable = value;
            app.AnalogChannelInputDropDown_4.Enable = ~value;
            app.AnalogChannelInputDropDown_4Label.Enable = ~value;
            app.ConnectiontypeDropDown_4.Enable = ~value;
            app.ConnectiontypeDropDown_4Label.Enable = ~value;
        end

        % Value changed function: AutoscaleCheckBox
        function AutoscaleCheckBoxValueChanged(app, event)
            value = app.AutoscaleCheckBox.Value;
            app.minauEditField.Enable = ~value;
            app.maxauEditField.Enable = ~value;
            updateChannelInfo(app)
        end

        % Value changed function: AutoscaleCheckBox_2
        function AutoscaleCheckBox_2ValueChanged(app, event)
            updateChannelInfo(app)
            value = app.AutoscaleCheckBox_2.Value;
            app.minauEditField_2.Enable = ~value;
            app.maxauEditField_2.Enable = ~value;
        end

        % Value changed function: AutoscaleCheckBox_3
        function AutoscaleCheckBox_3ValueChanged(app, event)
            updateChannelInfo(app)
            value = app.AutoscaleCheckBox_3.Value;
            app.minauEditField_3.Enable = ~value;
            app.maxauEditField_3.Enable = ~value;
        end

        % Value changed function: AutoscaleCheckBox_4
        function AutoscaleCheckBox_4ValueChanged(app, event)
            updateChannelInfo(app)
            value = app.AutoscaleCheckBox_4.Value;
            app.minauEditField_4.Enable = ~value;
            app.maxauEditField_4.Enable = ~value;
        end

        % Value changed function: minauEditField
        function minauEditFieldValueChanged(app, event)
            value = app.minauEditField.Value;
            updateChannelInfo(app)
        end

        % Value changed function: maxauEditField
        function maxauEditFieldValueChanged(app, event)
            value = app.maxauEditField.Value;
            updateChannelInfo(app)
        end

        % Value changed function: minauEditField_2
        function minauEditField_2ValueChanged(app, event)
            value = app.minauEditField_2.Value;
            updateChannelInfo(app)
        end

        % Value changed function: maxauEditField_2
        function maxauEditField_2ValueChanged(app, event)
            value = app.maxauEditField_2.Value;
            updateChannelInfo(app)
        end

        % Value changed function: minauEditField_3
        function minauEditField_3ValueChanged(app, event)
            value = app.minauEditField_3.Value;
            updateChannelInfo(app)
        end

        % Value changed function: maxauEditField_3
        function maxauEditField_3ValueChanged(app, event)
            value = app.maxauEditField_3.Value;
            updateChannelInfo(app)
        end

        % Value changed function: minauEditField_4
        function minauEditField_4ValueChanged(app, event)
            value = app.minauEditField_4.Value;
            updateChannelInfo(app)
        end

        % Value changed function: maxauEditField_4
        function maxauEditField_4ValueChanged(app, event)
            value = app.maxauEditField_4.Value;
            updateChannelInfo(app)
        end

        % Button pushed function: InitializePolarMotorButton
        function InitializePolarMotorButtonPushed(app, event)
            printLogWindow(app,"Waveplate motor Initialization")
            % Create a serial port object.
            
            app.URB_Ojt = instrfind;
            
            % Create the serial port object if it does not exist
            % otherwise use the object that was found.
            if isempty(app.URB_Ojt)==0
                fclose(app.URB_Ojt);
                delete(app.URB_Ojt)
                %     URB_Ojt = URB_Ojt(1);
            end
            try
            app.URB_Ojt=serial(app.PolarMotorPortEditField.Value,'BaudRate',57600,'DataBits',8,'FlowControl','software',...
                'Terminator','CR/LF');
            fopen(app.URB_Ojt);%URB100CC_PN:B141539_UD:14/10/2013:
            fprintf(app.URB_Ojt,'1or'); %  execute 'homing' state (Changes Solid Orange to Solid Green)
            Command = "1pa0";
            fprintf(app.URB_Ojt,Command);
            app.InitializePolarMotorButton.Enable = false;
            app.TakePolarStackButton.Enable = true;
            app.StartingAngledegrEditField.Enable = true;
            app.EndingAngledegrEditField.Enable = true;
            app.StepAngledegrEditField.Enable = true;
            
            printLogWindow(app,"Polar motor is ready")
            catch ME
                printLogWindow(app, "Could not initialize the motor");
                printLogWindow(app, ME.message)
            end
            
            
        end

        % Button pushed function: TakePolarStackButton
        function TakePolarStackButtonPushed(app, event)
            printLogWindow(app,"Acquiring Polar stack, please wait")
            app.TakePolarStackButton.Enable = false;
            app.LiveButton.Enable = false;
            app.ScanSaveButton.Enable = false;
            firstDraw = true;
            try
                AngleStart = app.StartingAngledegrEditField.Value; AngleStop = app.EndingAngledegrEditField.Value; AngleStep = app.StepAngledegrEditField.Value;
                Angle = AngleStart;
                
                saveTIFF = true; saveHDF5 = false;      % define in what formats the data will be saved
                dataPolCUBE = zeros(int16(app.scanXRange /  (app.scanStep))+1,int16(app.scanYRange /  app.scanStep)+1, int8((AngleStop-AngleStart)/AngleStep)+1, app.NumberOfEnabledChannels);       % the data cube with the complete Polar stack
                
                fprintf(app.URB_Ojt,'1or'); %  execute 'homing' state (Changes Solid Orange to Solid Green)
                setPolarAngle(app,AngleStart);
                
                printLogWindow(app, "Acquiring Polar stack, please wait");
                pause(app.TimeLag);
                % if the first angle is far from 0, it is better to give time to the motor
                % to rotate to this position
                localIterator = 0;
                while Angle<=AngleStop
                    localIterator = localIterator +1;
                    printLogWindow(app, "Acquiring Polar stack, please wait")
                    setPolarAngle(app,Angle);
                    app.signalData = NLimagingCoords(app,app.coordPoints, app.numberOfAccums);
                    
                    for channel =1 :app.NumberOfEnabledChannels
                        dataPolCUBE(:, :, localIterator,channel) =  app.signalData(:,:,channel);                        
                    end
                    drawImages2(app,firstDraw,app.signalData);
                    firstDraw=false;
                    Angle = Angle + AngleStep;
                end
                %FilenameComment='_Anlge'+num2str(AngleStart,'%03.f')+'-'+num2str(AngleStop,'%03.f')+'-'+num2str(AngleStep,'%03.f')+'-'+app.FilenameCommentEditField.Value;
                FilenameComment= '_Anlge'+string(AngleStart)+'-'+string(AngleStop)+'-'+string(AngleStep)+'-'+app.FilenameCommentEditField.Value;
                saveDataTiff(app,FilenameComment, dataPolCUBE)
                
            catch ME
                printLogWindow(app,'Waveplate motor is off, aborting..')
                printLogWindow(app, ME.message)
            end
            
            setPolarAngle(app,AngleStart);
            app.TakePolarStackButton.Enable = true;
            app.ScanSaveButton.Enable = true;
            app.LiveButton.Enable = true;
            printLogWindow(app, "Polar stack - DONE!")
        end

        % Value changed function: TimeLagForPolarMotorsecEditField
        function TimeLagForPolarMotorsecEditFieldValueChanged(app, event)
            value = app.TimeLagForPolarMotorsecEditField.Value;
            app.TimeLag = value;
        end

        % Callback function
        function ButtonPushed(app, event)

            
        end

        % Value changed function: StartLiveButton
        function StartLiveButtonValueChanged(app, event)
            value = app.StartLiveButton.Value;
            if value ==true
                %                 [xcoord ,ycoord] = selectGalvoPosition(app,str2num(app.ChannelForImagePixelSelectionDropDown.Value)+1);
                %                 optimizationPoint = [-double(int16(app.scanXRange / app.scanStep)/2)*app.scanStep*app.calibration+double(xcoord)*app.scanStep*app.calibration;-double(int16(app.scanYRange / app.scanStep)/2)*app.scanStep*app.calibration+double(ycoord)*app.scanStep*app.calibration];
                %                 if app.SimulationmodeCheckBox.Value==false
                %                 app.imSession.outputSingleScan([optimizationPoint(1) optimizationPoint(2)])
                %                 queueCoordX = ones(10,1)*optimizationPoint(1);
                %                 queueCoordY = ones(10,1)*optimizationPoint(2);
                %
                %                 end
            end
            while value == true
                %                 app.imSession.queueOutputData([queueCoordX,queueCoordY]);
                %                 app.imSession.prepare()
                
                value = app.StartLiveButton.Value;
                if value == false
                    break
                end
                if app.SimulationmodeCheckBox.Value==true
                    data = randi(100,4,1);
                else
                    data = app.singleMeasurement();
                    %                     data=zeros(app.NumberOfEnabledChannels,1);
                    %                     buf = app.imSession.startForeground();
                    %                 for channel=1:app.NumberOfEnabledChannels
                    %                     if app.channelsData(channel,2)== true
                    %
                    %                     buf2 = [buf(1,channel); diff(buf(:,channel))];
                    %                     data(channel,1) = mean(buf2);
                    %                     else
                    %                         data(channel,1) = mean(buf);properties
                    %                     end
                    %                 end
                    if app.AutoscaleCheckBox_5.Value == true
                        ylim(app.UIAxes,[min(data)-0.1 max(data)+0.1]);
                        bar(app.UIAxes, data);drawnow;
                    else
                        ylim(app.UIAxes,[app.MinEditField.Value app.MaxEditField.Value]);
                        bar(app.UIAxes, data);drawnow;
                    end
                    
                    pause(app.FasterSlider.Value/1000);
                end
                
            end
        end

        % Value changed function: AutoscaleCheckBox_5
        function AutoscaleCheckBox_5ValueChanged(app, event)
            value = app.AutoscaleCheckBox_5.Value;
            app.MinEditField.Enable = ~value;
            app.MaxEditField.Enable = ~value;
        end

        % Button pushed function: ZoomInButton
        function ZoomInButtonPushed(app, event)
            [xcoord, ycoord] = selectGalvoPosition(app,str2num(app.ChannelDropDown.Value)+1);
            
            zoomFactor = app.ZoomfactorEditField.Value;
            zoomImage(app,zoomFactor);
            app.coordPoints = GalvoCoordinatesForImage(app,app.scanXRange,app.scanYRange,app.scanStep,app.xFoVCenter,app.yFoVCenter,app.pixRepetition);
            drawImages(app,true)
        end

        % Button pushed function: ZoomOutButton
        function ZoomOutButtonPushed(app, event)
            [xcoord, ycoord] = selectGalvoPosition(app,str2num(app.ChannelDropDown.Value)+1);
            app.FoVcenterXumEditField.Value = -double(int16(app.scanXRange / app.scanStep)/2)*app.scanStep+double(xcoord)*app.scanStep;
            app.FoVcenterYumEditField.Value = -double(int16(app.scanYRange / app.scanStep)/2)*app.scanStep+double(ycoord)*app.scanStep;
            zoomFactor =1 / app.ZoomfactorEditField.Value;
            zoomImage(app,zoomFactor);
            app.coordPoints = GalvoCoordinatesForImage(app,app.scanXRange,app.scanYRange,app.scanStep,app.xFoVCenter,app.yFoVCenter,app.pixRepetition);
            drawImages(app,true)
        end

        % Value changed function: SessionUpdateRateHzEditField
        function SessionUpdateRateHzEditFieldValueChanged(app, event)
            value = app.SessionUpdateRateHzEditField.Value;
            %             buf = exist('app.imSession','class');
            %             if buf==true
            app.imSession.Rate = value;
            %             end
        end

        % Value changed function: Button
        function ButtonValueChanged(app, event)
            value = app.Button.Value;
            
            if value ==true
                [xcoord ,ycoord] = selectGalvoPosition(app,str2num(app.ChannelForImagePixelSelectionDropDown.Value)+1);
                optimizationPoint = [-double(int16(app.scanXRange / app.scanStep)/2)*app.scanStep*app.calibration+double(xcoord)*app.scanStep*app.calibration;-double(int16(app.scanYRange / app.scanStep)/2)*app.scanStep*app.calibration+double(ycoord)*app.scanStep*app.calibration];
                if app.SimulationmodeCheckBox.Value==false
                    app.imSession.outputSingleScan([optimizationPoint(1) optimizationPoint(2)])
                    queueCoordX = ones(10000000,1)*optimizationPoint(1);
                    queueCoordY = ones(10000000,1)*optimizationPoint(2);
                    app.imSession.addlistener('DataAvailable',@app.plotLiveChannels);
                    app.imSession.queueOutputData([queueCoordX,queueCoordY]);
                    app.imSession.startBackground()
                end
            end
            while app.Button.Value == true
                pause(app.FasterSlider.Value/1000);drawnow
                if app.Button.Value==false
                    break;
                    app.imSession.stop()
                end
            end
            app.Button.Value = false;
            
        end
    end

    % App initialization and construction
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create MatMicroMain
            app.MatMicroMain = uifigure;
            app.MatMicroMain.IntegerHandle = 'on';
            app.MatMicroMain.AutoResizeChildren = 'off';
            app.MatMicroMain.Position = [100 -100 1060 946];
            app.MatMicroMain.Name = 'microMOSAIC v0.73';
            app.MatMicroMain.Resize = 'off';
            app.MatMicroMain.CloseRequestFcn = createCallbackFcn(app, @MatMicroMainCloseRequest, true);

            % Create TabGroup
            app.TabGroup = uitabgroup(app.MatMicroMain);
            app.TabGroup.AutoResizeChildren = 'off';
            app.TabGroup.Position = [1 131 1060 801];

            % Create MainTab
            app.MainTab = uitab(app.TabGroup);
            app.MainTab.AutoResizeChildren = 'off';
            app.MainTab.Title = 'Main';

            % Create InitializeButton
            app.InitializeButton = uibutton(app.MainTab, 'push');
            app.InitializeButton.ButtonPushedFcn = createCallbackFcn(app, @InitializeButtonPushed, true);
            app.InitializeButton.Position = [852 689 185 47];
            app.InitializeButton.Text = 'Initialize';

            % Create ReadyLampLabel
            app.ReadyLampLabel = uilabel(app.MainTab);
            app.ReadyLampLabel.HorizontalAlignment = 'right';
            app.ReadyLampLabel.Position = [908 659 40 22];
            app.ReadyLampLabel.Text = 'Ready';

            % Create ReadyLamp
            app.ReadyLamp = uilamp(app.MainTab);
            app.ReadyLamp.Position = [963 659 20 20];
            app.ReadyLamp.Color = [1 0 0];

            % Create ScanSaveButton
            app.ScanSaveButton = uibutton(app.MainTab, 'push');
            app.ScanSaveButton.ButtonPushedFcn = createCallbackFcn(app, @ScanSaveButtonPushed, true);
            app.ScanSaveButton.Enable = 'off';
            app.ScanSaveButton.Position = [927 314 110 36];
            app.ScanSaveButton.Text = 'Scan&Save';

            % Create ScanRangeXumEditFieldLabel
            app.ScanRangeXumEditFieldLabel = uilabel(app.MainTab);
            app.ScanRangeXumEditFieldLabel.HorizontalAlignment = 'right';
            app.ScanRangeXumEditFieldLabel.Position = [817 506 102 22];
            app.ScanRangeXumEditFieldLabel.Text = 'Scan Range X, um';

            % Create ScanRangeXumEditField
            app.ScanRangeXumEditField = uieditfield(app.MainTab, 'numeric');
            app.ScanRangeXumEditField.Limits = [0 600];
            app.ScanRangeXumEditField.ValueChangedFcn = createCallbackFcn(app, @ScanRangeXumEditFieldValueChanged, true);
            app.ScanRangeXumEditField.Position = [927 506 91 22];
            app.ScanRangeXumEditField.Value = 100;

            % Create ScanRangeYumLabel
            app.ScanRangeYumLabel = uilabel(app.MainTab);
            app.ScanRangeYumLabel.HorizontalAlignment = 'right';
            app.ScanRangeYumLabel.Position = [805 473 115 28];
            app.ScanRangeYumLabel.Text = 'Scan Range Y, um';

            % Create ScanRangeYumEditField
            app.ScanRangeYumEditField = uieditfield(app.MainTab, 'numeric');
            app.ScanRangeYumEditField.ValueChangedFcn = createCallbackFcn(app, @ScanRangeXumEditFieldValueChanged, true);
            app.ScanRangeYumEditField.Position = [928 479 90 22];
            app.ScanRangeYumEditField.Value = 100;

            % Create ScanResolutionumLabel
            app.ScanResolutionumLabel = uilabel(app.MainTab);
            app.ScanResolutionumLabel.HorizontalAlignment = 'right';
            app.ScanResolutionumLabel.Position = [817 445 113 28];
            app.ScanResolutionumLabel.Text = 'Scan Resolution,um';

            % Create ScanResolutionumEditField
            app.ScanResolutionumEditField = uieditfield(app.MainTab, 'numeric');
            app.ScanResolutionumEditField.ValueChangedFcn = createCallbackFcn(app, @ScanRangeXumEditFieldValueChanged, true);
            app.ScanResolutionumEditField.Position = [938 451 80 22];
            app.ScanResolutionumEditField.Value = 0.5;

            % Create NumberOfAccumulationsEditFieldLabel
            app.NumberOfAccumulationsEditFieldLabel = uilabel(app.MainTab);
            app.NumberOfAccumulationsEditFieldLabel.HorizontalAlignment = 'right';
            app.NumberOfAccumulationsEditFieldLabel.Position = [817 420 149 22];
            app.NumberOfAccumulationsEditFieldLabel.Text = 'Number Of Accumulations';

            % Create NumberOfAccumulationsEditField
            app.NumberOfAccumulationsEditField = uieditfield(app.MainTab, 'numeric');
            app.NumberOfAccumulationsEditField.Position = [972 420 46 22];
            app.NumberOfAccumulationsEditField.Value = 1;

            % Create TestbuttondontpressButton
            app.TestbuttondontpressButton = uibutton(app.MainTab, 'push');
            app.TestbuttondontpressButton.ButtonPushedFcn = createCallbackFcn(app, @TestbuttondontpressButtonPushed, true);
            app.TestbuttondontpressButton.Position = [764 433 139 23];
            app.TestbuttondontpressButton.Text = 'Test button, don''t press';

            % Create YourimagewillappearhereLabel
            app.YourimagewillappearhereLabel = uilabel(app.MainTab);
            app.YourimagewillappearhereLabel.FontSize = 24;
            app.YourimagewillappearhereLabel.Position = [72 517 306 30];
            app.YourimagewillappearhereLabel.Text = 'Your image will appear here';

            % Create LiveButton
            app.LiveButton = uibutton(app.MainTab, 'state');
            app.LiveButton.ValueChangedFcn = createCallbackFcn(app, @LiveButtonValueChanged, true);
            app.LiveButton.Enable = 'off';
            app.LiveButton.Text = 'Live';
            app.LiveButton.Position = [817 314 110 36];

            % Create SimulationmodeCheckBox
            app.SimulationmodeCheckBox = uicheckbox(app.MainTab);
            app.SimulationmodeCheckBox.Text = 'Simulation mode';
            app.SimulationmodeCheckBox.Position = [876 744 111 22];

            % Create PolarPanel
            app.PolarPanel = uipanel(app.MainTab);
            app.PolarPanel.AutoResizeChildren = 'off';
            app.PolarPanel.Title = 'Polar';
            app.PolarPanel.Position = [785 45 260 257];

            % Create InitializePolarMotorButton
            app.InitializePolarMotorButton = uibutton(app.PolarPanel, 'push');
            app.InitializePolarMotorButton.ButtonPushedFcn = createCallbackFcn(app, @InitializePolarMotorButtonPushed, true);
            app.InitializePolarMotorButton.Enable = 'off';
            app.InitializePolarMotorButton.Position = [4.5 212 124 22];
            app.InitializePolarMotorButton.Text = 'Initialize Polar Motor';

            % Create CurrentAngledegrGaugeLabel
            app.CurrentAngledegrGaugeLabel = uilabel(app.PolarPanel);
            app.CurrentAngledegrGaugeLabel.HorizontalAlignment = 'center';
            app.CurrentAngledegrGaugeLabel.Position = [84 1 113 22];
            app.CurrentAngledegrGaugeLabel.Text = 'Current  Angle, degr';

            % Create CurrentAngledegrGauge
            app.CurrentAngledegrGauge = uigauge(app.PolarPanel, 'semicircular');
            app.CurrentAngledegrGauge.Limits = [0 180];
            app.CurrentAngledegrGauge.Position = [62 38 157 85];

            % Create StartingAngledegrEditFieldLabel
            app.StartingAngledegrEditFieldLabel = uilabel(app.PolarPanel);
            app.StartingAngledegrEditFieldLabel.HorizontalAlignment = 'right';
            app.StartingAngledegrEditFieldLabel.Enable = 'off';
            app.StartingAngledegrEditFieldLabel.Position = [4 183 111 22];
            app.StartingAngledegrEditFieldLabel.Text = 'Starting Angle, degr';

            % Create StartingAngledegrEditField
            app.StartingAngledegrEditField = uieditfield(app.PolarPanel, 'numeric');
            app.StartingAngledegrEditField.Enable = 'off';
            app.StartingAngledegrEditField.Position = [130 183 40 22];

            % Create EndingAngledegrEditFieldLabel
            app.EndingAngledegrEditFieldLabel = uilabel(app.PolarPanel);
            app.EndingAngledegrEditFieldLabel.HorizontalAlignment = 'right';
            app.EndingAngledegrEditFieldLabel.Enable = 'off';
            app.EndingAngledegrEditFieldLabel.Position = [8 154 107 22];
            app.EndingAngledegrEditFieldLabel.Text = 'Ending Angle, degr';

            % Create EndingAngledegrEditField
            app.EndingAngledegrEditField = uieditfield(app.PolarPanel, 'numeric');
            app.EndingAngledegrEditField.Enable = 'off';
            app.EndingAngledegrEditField.Position = [130 154 40 22];
            app.EndingAngledegrEditField.Value = 170;

            % Create StepAngledegrEditFieldLabel
            app.StepAngledegrEditFieldLabel = uilabel(app.PolarPanel);
            app.StepAngledegrEditFieldLabel.HorizontalAlignment = 'right';
            app.StepAngledegrEditFieldLabel.Enable = 'off';
            app.StepAngledegrEditFieldLabel.Position = [20 126 95 22];
            app.StepAngledegrEditFieldLabel.Text = 'Step Angle, degr';

            % Create StepAngledegrEditField
            app.StepAngledegrEditField = uieditfield(app.PolarPanel, 'numeric');
            app.StepAngledegrEditField.Enable = 'off';
            app.StepAngledegrEditField.Position = [130 126 40 22];
            app.StepAngledegrEditField.Value = 10;

            % Create TakePolarStackButton
            app.TakePolarStackButton = uibutton(app.PolarPanel, 'push');
            app.TakePolarStackButton.ButtonPushedFcn = createCallbackFcn(app, @TakePolarStackButtonPushed, true);
            app.TakePolarStackButton.Enable = 'off';
            app.TakePolarStackButton.Position = [176.5 164 77 62];
            app.TakePolarStackButton.Text = {'Take '; 'Polar Stack'};

            % Create FoVcenterXumEditFieldLabel
            app.FoVcenterXumEditFieldLabel = uilabel(app.MainTab);
            app.FoVcenterXumEditFieldLabel.HorizontalAlignment = 'right';
            app.FoVcenterXumEditFieldLabel.Position = [817 389 99 22];
            app.FoVcenterXumEditFieldLabel.Text = 'FoV center X, um';

            % Create FoVcenterXumEditField
            app.FoVcenterXumEditField = uieditfield(app.MainTab, 'numeric');
            app.FoVcenterXumEditField.ValueChangedFcn = createCallbackFcn(app, @ScanRangeXumEditFieldValueChanged, true);
            app.FoVcenterXumEditField.Position = [933 389 85 22];

            % Create FoVcenterYumEditFieldLabel
            app.FoVcenterYumEditFieldLabel = uilabel(app.MainTab);
            app.FoVcenterYumEditFieldLabel.HorizontalAlignment = 'right';
            app.FoVcenterYumEditFieldLabel.Position = [817 360 97 22];
            app.FoVcenterYumEditFieldLabel.Text = 'FoV center Y, um';

            % Create FoVcenterYumEditField
            app.FoVcenterYumEditField = uieditfield(app.MainTab, 'numeric');
            app.FoVcenterYumEditField.ValueChangedFcn = createCallbackFcn(app, @ScanRangeXumEditFieldValueChanged, true);
            app.FoVcenterYumEditField.Position = [931 360 87 22];

            % Create ZoomPanel
            app.ZoomPanel = uipanel(app.MainTab);
            app.ZoomPanel.AutoResizeChildren = 'off';
            app.ZoomPanel.Title = 'Zoom';
            app.ZoomPanel.Position = [837 527 168 128];

            % Create ZoomfactorEditFieldLabel
            app.ZoomfactorEditFieldLabel = uilabel(app.ZoomPanel);
            app.ZoomfactorEditFieldLabel.HorizontalAlignment = 'right';
            app.ZoomfactorEditFieldLabel.Position = [23 84 70 22];
            app.ZoomfactorEditFieldLabel.Text = 'Zoom factor';

            % Create ZoomfactorEditField
            app.ZoomfactorEditField = uieditfield(app.ZoomPanel, 'numeric');
            app.ZoomfactorEditField.Position = [108 84 32 22];
            app.ZoomfactorEditField.Value = 2;

            % Create ZoomInButton
            app.ZoomInButton = uibutton(app.ZoomPanel, 'push');
            app.ZoomInButton.ButtonPushedFcn = createCallbackFcn(app, @ZoomInButtonPushed, true);
            app.ZoomInButton.Enable = 'off';
            app.ZoomInButton.Position = [21 53 119 22];
            app.ZoomInButton.Text = 'Zoom In';

            % Create ZoomOutButton
            app.ZoomOutButton = uibutton(app.ZoomPanel, 'push');
            app.ZoomOutButton.ButtonPushedFcn = createCallbackFcn(app, @ZoomOutButtonPushed, true);
            app.ZoomOutButton.Enable = 'off';
            app.ZoomOutButton.Position = [21 26 119 22];
            app.ZoomOutButton.Text = 'Zoom Out';

            % Create ChannelDropDownLabel
            app.ChannelDropDownLabel = uilabel(app.ZoomPanel);
            app.ChannelDropDownLabel.HorizontalAlignment = 'right';
            app.ChannelDropDownLabel.Position = [0 4 50 22];
            app.ChannelDropDownLabel.Text = 'Channel';

            % Create ChannelDropDown
            app.ChannelDropDown = uidropdown(app.ZoomPanel);
            app.ChannelDropDown.Items = {'0', '1', '2', '3'};
            app.ChannelDropDown.ItemsData = {'0', '1', '2', '3'};
            app.ChannelDropDown.Position = [65 4 100 22];
            app.ChannelDropDown.Value = '0';

            % Create PixelRepetitionEditFieldLabel
            app.PixelRepetitionEditFieldLabel = uilabel(app.MainTab);
            app.PixelRepetitionEditFieldLabel.HorizontalAlignment = 'right';
            app.PixelRepetitionEditFieldLabel.Position = [793 349 89 22];
            app.PixelRepetitionEditFieldLabel.Text = 'Pixel Repetition';

            % Create PixelRepetitionEditField
            app.PixelRepetitionEditField = uieditfield(app.MainTab, 'numeric');
            app.PixelRepetitionEditField.ValueChangedFcn = createCallbackFcn(app, @ScanRangeXumEditFieldValueChanged, true);
            app.PixelRepetitionEditField.Position = [897 349 100 22];
            app.PixelRepetitionEditField.Value = 1;

            % Create LiveTab
            app.LiveTab = uitab(app.TabGroup);
            app.LiveTab.Title = 'Live';

            % Create UIAxes
            app.UIAxes = uiaxes(app.LiveTab);
            title(app.UIAxes, '')
            xlabel(app.UIAxes, 'Channel')
            ylabel(app.UIAxes, 'Signal')
            app.UIAxes.XTick = [0 1 2 3];
            app.UIAxes.XTickLabel = {'0'; '1'; '2'; '3'};
            app.UIAxes.Position = [25 30 288 640];

            % Create FasterSliderLabel
            app.FasterSliderLabel = uilabel(app.LiveTab);
            app.FasterSliderLabel.HorizontalAlignment = 'right';
            app.FasterSliderLabel.Position = [448 668 40 22];
            app.FasterSliderLabel.Text = 'Faster';

            % Create FasterSlider
            app.FasterSlider = uislider(app.LiveTab);
            app.FasterSlider.Limits = [0 500];
            app.FasterSlider.MajorTicks = [];
            app.FasterSlider.MinorTicks = [];
            app.FasterSlider.Position = [509 677 150 3];

            % Create StartLiveButton
            app.StartLiveButton = uibutton(app.LiveTab, 'state');
            app.StartLiveButton.ValueChangedFcn = createCallbackFcn(app, @StartLiveButtonValueChanged, true);
            app.StartLiveButton.Enable = 'off';
            app.StartLiveButton.Text = 'Start Live';
            app.StartLiveButton.Position = [347 486 138 113];

            % Create SlowerLabel
            app.SlowerLabel = uilabel(app.LiveTab);
            app.SlowerLabel.Position = [674 668 42 22];
            app.SlowerLabel.Text = 'Slower';

            % Create RefreshrateLabel
            app.RefreshrateLabel = uilabel(app.LiveTab);
            app.RefreshrateLabel.Position = [553 697 72 22];
            app.RefreshrateLabel.Text = 'Refresh rate';

            % Create ChannelForImagePixelSelectionDropDownLabel
            app.ChannelForImagePixelSelectionDropDownLabel = uilabel(app.LiveTab);
            app.ChannelForImagePixelSelectionDropDownLabel.HorizontalAlignment = 'right';
            app.ChannelForImagePixelSelectionDropDownLabel.Position = [339 608 191 22];
            app.ChannelForImagePixelSelectionDropDownLabel.Text = 'Channel For Image Pixel Selection';

            % Create ChannelForImagePixelSelectionDropDown
            app.ChannelForImagePixelSelectionDropDown = uidropdown(app.LiveTab);
            app.ChannelForImagePixelSelectionDropDown.Items = {'0', '1', '2', '3'};
            app.ChannelForImagePixelSelectionDropDown.ItemsData = {'0', '1', '2', '3'};
            app.ChannelForImagePixelSelectionDropDown.Position = [545 608 100 22];
            app.ChannelForImagePixelSelectionDropDown.Value = '0';

            % Create AutoscaleCheckBox_5
            app.AutoscaleCheckBox_5 = uicheckbox(app.LiveTab);
            app.AutoscaleCheckBox_5.ValueChangedFcn = createCallbackFcn(app, @AutoscaleCheckBox_5ValueChanged, true);
            app.AutoscaleCheckBox_5.Text = 'Autoscale';
            app.AutoscaleCheckBox_5.Position = [347 697 75 22];
            app.AutoscaleCheckBox_5.Value = true;

            % Create MaxEditFieldLabel
            app.MaxEditFieldLabel = uilabel(app.LiveTab);
            app.MaxEditFieldLabel.HorizontalAlignment = 'right';
            app.MaxEditFieldLabel.Enable = 'off';
            app.MaxEditFieldLabel.Position = [339 670 28 22];
            app.MaxEditFieldLabel.Text = 'Max';

            % Create MaxEditField
            app.MaxEditField = uieditfield(app.LiveTab, 'numeric');
            app.MaxEditField.Enable = 'off';
            app.MaxEditField.Position = [379 670 51 22];
            app.MaxEditField.Value = 3000;

            % Create MinEditFieldLabel
            app.MinEditFieldLabel = uilabel(app.LiveTab);
            app.MinEditFieldLabel.HorizontalAlignment = 'right';
            app.MinEditFieldLabel.Enable = 'off';
            app.MinEditFieldLabel.Position = [339 649 25 22];
            app.MinEditFieldLabel.Text = 'Min';

            % Create MinEditField
            app.MinEditField = uieditfield(app.LiveTab, 'numeric');
            app.MinEditField.Enable = 'off';
            app.MinEditField.Position = [379 649 51 22];

            % Create Button
            app.Button = uibutton(app.LiveTab, 'state');
            app.Button.ValueChangedFcn = createCallbackFcn(app, @ButtonValueChanged, true);
            app.Button.Text = 'Button';
            app.Button.Position = [641 543 100 22];

            % Create SettingsTab
            app.SettingsTab = uitab(app.TabGroup);
            app.SettingsTab.AutoResizeChildren = 'off';
            app.SettingsTab.Title = 'Acquisition Settings';

            % Create ObjectiveDropDownLabel
            app.ObjectiveDropDownLabel = uilabel(app.SettingsTab);
            app.ObjectiveDropDownLabel.HorizontalAlignment = 'right';
            app.ObjectiveDropDownLabel.Position = [14 737 56 22];
            app.ObjectiveDropDownLabel.Text = 'Objective';

            % Create ObjectiveDropDown
            app.ObjectiveDropDown = uidropdown(app.SettingsTab);
            app.ObjectiveDropDown.Items = {'Nikon 20X NA0.75 (room134b)', 'Nikon 40X NA1.15 (room134b)', 'Nikon 20X NA0.7 (room134b)', 'Nikon 40X NA1.15 (room 22)'};
            app.ObjectiveDropDown.ItemsData = {'0.00484', '0.00968', '0.00462', '0.0220', ''};
            app.ObjectiveDropDown.Position = [85 737 197 22];
            app.ObjectiveDropDown.Value = '0.00462';

            % Create SessionUpdateRateHzEditFieldLabel
            app.SessionUpdateRateHzEditFieldLabel = uilabel(app.SettingsTab);
            app.SessionUpdateRateHzEditFieldLabel.HorizontalAlignment = 'right';
            app.SessionUpdateRateHzEditFieldLabel.Position = [423 737 140 22];
            app.SessionUpdateRateHzEditFieldLabel.Text = 'Session Update Rate, Hz';

            % Create SessionUpdateRateHzEditField
            app.SessionUpdateRateHzEditField = uieditfield(app.SettingsTab, 'numeric');
            app.SessionUpdateRateHzEditField.Limits = [1 100000];
            app.SessionUpdateRateHzEditField.ValueDisplayFormat = '%.0f';
            app.SessionUpdateRateHzEditField.ValueChangedFcn = createCallbackFcn(app, @SessionUpdateRateHzEditFieldValueChanged, true);
            app.SessionUpdateRateHzEditField.Position = [578 737 100 22];
            app.SessionUpdateRateHzEditField.Value = 50000;

            % Create DeviceNameEditFieldLabel
            app.DeviceNameEditFieldLabel = uilabel(app.SettingsTab);
            app.DeviceNameEditFieldLabel.HorizontalAlignment = 'right';
            app.DeviceNameEditFieldLabel.Position = [680 737 78 22];
            app.DeviceNameEditFieldLabel.Text = 'Device Name';

            % Create DeviceNameEditField
            app.DeviceNameEditField = uieditfield(app.SettingsTab, 'text');
            app.DeviceNameEditField.Position = [773 737 100 22];
            app.DeviceNameEditField.Value = 'Dev1';

            % Create FirstChannelSettingsPanel
            app.FirstChannelSettingsPanel = uipanel(app.SettingsTab);
            app.FirstChannelSettingsPanel.AutoResizeChildren = 'off';
            app.FirstChannelSettingsPanel.Title = 'First Channel Settings';
            app.FirstChannelSettingsPanel.Position = [18 564 1022 84];

            % Create Switch
            app.Switch = uiswitch(app.FirstChannelSettingsPanel, 'slider');
            app.Switch.Items = {'Analog', 'Counter'};
            app.Switch.ValueChangedFcn = createCallbackFcn(app, @SwitchValueChanged, true);
            app.Switch.Position = [425 40 45 20];
            app.Switch.Value = 'Analog';

            % Create AnalogChannelInputDropDownLabel
            app.AnalogChannelInputDropDownLabel = uilabel(app.FirstChannelSettingsPanel);
            app.AnalogChannelInputDropDownLabel.HorizontalAlignment = 'right';
            app.AnalogChannelInputDropDownLabel.Enable = 'off';
            app.AnalogChannelInputDropDownLabel.Position = [4 5 121 22];
            app.AnalogChannelInputDropDownLabel.Text = 'Analog Channel Input';

            % Create AnalogChannelInputDropDown
            app.AnalogChannelInputDropDown = uidropdown(app.FirstChannelSettingsPanel);
            app.AnalogChannelInputDropDown.Items = {'ai0', 'ai1', 'ai2', 'ai3'};
            app.AnalogChannelInputDropDown.Enable = 'off';
            app.AnalogChannelInputDropDown.Position = [140 5 100 22];
            app.AnalogChannelInputDropDown.Value = 'ai0';

            % Create ConnectiontypeDropDownLabel
            app.ConnectiontypeDropDownLabel = uilabel(app.FirstChannelSettingsPanel);
            app.ConnectiontypeDropDownLabel.HorizontalAlignment = 'right';
            app.ConnectiontypeDropDownLabel.Enable = 'off';
            app.ConnectiontypeDropDownLabel.Position = [3 35 92 22];
            app.ConnectiontypeDropDownLabel.Text = 'Connection type';

            % Create ConnectiontypeDropDown
            app.ConnectiontypeDropDown = uidropdown(app.FirstChannelSettingsPanel);
            app.ConnectiontypeDropDown.Items = {'Single Ended (RSE)'};
            app.ConnectiontypeDropDown.ItemsData = {'SingleEnded'};
            app.ConnectiontypeDropDown.Enable = 'off';
            app.ConnectiontypeDropDown.Position = [110 35 142 22];
            app.ConnectiontypeDropDown.Value = 'SingleEnded';

            % Create CounterChannelInputDropDownLabel
            app.CounterChannelInputDropDownLabel = uilabel(app.FirstChannelSettingsPanel);
            app.CounterChannelInputDropDownLabel.HorizontalAlignment = 'right';
            app.CounterChannelInputDropDownLabel.Position = [623 39 126 22];
            app.CounterChannelInputDropDownLabel.Text = 'Counter Channel Input';

            % Create CounterChannelInputDropDown
            app.CounterChannelInputDropDown = uidropdown(app.FirstChannelSettingsPanel);
            app.CounterChannelInputDropDown.Items = {'ctr0', 'ctr1', 'ctr2', 'ctr3'};
            app.CounterChannelInputDropDown.Position = [764 39 100 22];
            app.CounterChannelInputDropDown.Value = 'ctr3';

            % Create minauEditFieldLabel
            app.minauEditFieldLabel = uilabel(app.FirstChannelSettingsPanel);
            app.minauEditFieldLabel.HorizontalAlignment = 'right';
            app.minauEditFieldLabel.Position = [356 5 49 22];
            app.minauEditFieldLabel.Text = 'min, a.u';

            % Create minauEditField
            app.minauEditField = uieditfield(app.FirstChannelSettingsPanel, 'numeric');
            app.minauEditField.ValueChangedFcn = createCallbackFcn(app, @minauEditFieldValueChanged, true);
            app.minauEditField.Enable = 'off';
            app.minauEditField.Position = [412 5 31 22];

            % Create maxauEditFieldLabel
            app.maxauEditFieldLabel = uilabel(app.FirstChannelSettingsPanel);
            app.maxauEditFieldLabel.HorizontalAlignment = 'right';
            app.maxauEditFieldLabel.Position = [449 5 54 22];
            app.maxauEditFieldLabel.Text = 'max, a.u.';

            % Create maxauEditField
            app.maxauEditField = uieditfield(app.FirstChannelSettingsPanel, 'numeric');
            app.maxauEditField.ValueChangedFcn = createCallbackFcn(app, @maxauEditFieldValueChanged, true);
            app.maxauEditField.Enable = 'off';
            app.maxauEditField.Position = [508 5 31 22];
            app.maxauEditField.Value = 10;

            % Create AutoscaleCheckBox
            app.AutoscaleCheckBox = uicheckbox(app.FirstChannelSettingsPanel);
            app.AutoscaleCheckBox.ValueChangedFcn = createCallbackFcn(app, @AutoscaleCheckBoxValueChanged, true);
            app.AutoscaleCheckBox.Text = 'Autoscale';
            app.AutoscaleCheckBox.Position = [645 5 75 22];
            app.AutoscaleCheckBox.Value = true;

            % Create NumberOfChannelsSliderLabel
            app.NumberOfChannelsSliderLabel = uilabel(app.SettingsTab);
            app.NumberOfChannelsSliderLabel.HorizontalAlignment = 'right';
            app.NumberOfChannelsSliderLabel.Position = [36 689 118 22];
            app.NumberOfChannelsSliderLabel.Text = 'Number Of Channels';

            % Create NumberOfChannelsSlider
            app.NumberOfChannelsSlider = uislider(app.SettingsTab);
            app.NumberOfChannelsSlider.Limits = [1 4];
            app.NumberOfChannelsSlider.MajorTicks = [1 2 3 4];
            app.NumberOfChannelsSlider.ValueChangedFcn = createCallbackFcn(app, @NumberOfChannelsSliderValueChanged, true);
            app.NumberOfChannelsSlider.MinorTicks = [];
            app.NumberOfChannelsSlider.Position = [175 698 150 3];
            app.NumberOfChannelsSlider.Value = 2;

            % Create SecondChannelSettingsPanel
            app.SecondChannelSettingsPanel = uipanel(app.SettingsTab);
            app.SecondChannelSettingsPanel.AutoResizeChildren = 'off';
            app.SecondChannelSettingsPanel.Title = 'Second Channel Settings';
            app.SecondChannelSettingsPanel.Position = [18 481 1022 84];

            % Create Switch_2
            app.Switch_2 = uiswitch(app.SecondChannelSettingsPanel, 'slider');
            app.Switch_2.Items = {'Analog', 'Counter'};
            app.Switch_2.ValueChangedFcn = createCallbackFcn(app, @Switch_2ValueChanged, true);
            app.Switch_2.Position = [426 40 45 20];
            app.Switch_2.Value = 'Analog';

            % Create AnalogChannelInputDropDown_2Label
            app.AnalogChannelInputDropDown_2Label = uilabel(app.SecondChannelSettingsPanel);
            app.AnalogChannelInputDropDown_2Label.HorizontalAlignment = 'right';
            app.AnalogChannelInputDropDown_2Label.Enable = 'off';
            app.AnalogChannelInputDropDown_2Label.Position = [4 5 121 22];
            app.AnalogChannelInputDropDown_2Label.Text = 'Analog Channel Input';

            % Create AnalogChannelInputDropDown_2
            app.AnalogChannelInputDropDown_2 = uidropdown(app.SecondChannelSettingsPanel);
            app.AnalogChannelInputDropDown_2.Items = {'ai0', 'ai1', 'ai2', 'ai3'};
            app.AnalogChannelInputDropDown_2.Enable = 'off';
            app.AnalogChannelInputDropDown_2.Position = [140 5 100 22];
            app.AnalogChannelInputDropDown_2.Value = 'ai1';

            % Create ConnectiontypeDropDown_2Label
            app.ConnectiontypeDropDown_2Label = uilabel(app.SecondChannelSettingsPanel);
            app.ConnectiontypeDropDown_2Label.HorizontalAlignment = 'right';
            app.ConnectiontypeDropDown_2Label.Enable = 'off';
            app.ConnectiontypeDropDown_2Label.Position = [4 35 92 22];
            app.ConnectiontypeDropDown_2Label.Text = 'Connection type';

            % Create ConnectiontypeDropDown_2
            app.ConnectiontypeDropDown_2 = uidropdown(app.SecondChannelSettingsPanel);
            app.ConnectiontypeDropDown_2.Items = {'Single Ended (RSE)'};
            app.ConnectiontypeDropDown_2.ItemsData = {'SingleEnded'};
            app.ConnectiontypeDropDown_2.Enable = 'off';
            app.ConnectiontypeDropDown_2.Position = [111 35 142 22];
            app.ConnectiontypeDropDown_2.Value = 'SingleEnded';

            % Create CounterChannelInputDropDown_2Label
            app.CounterChannelInputDropDown_2Label = uilabel(app.SecondChannelSettingsPanel);
            app.CounterChannelInputDropDown_2Label.HorizontalAlignment = 'right';
            app.CounterChannelInputDropDown_2Label.Position = [623 39 126 22];
            app.CounterChannelInputDropDown_2Label.Text = 'Counter Channel Input';

            % Create CounterChannelInputDropDown_2
            app.CounterChannelInputDropDown_2 = uidropdown(app.SecondChannelSettingsPanel);
            app.CounterChannelInputDropDown_2.Items = {'ctr0', 'ctr1', 'ctr2', 'ctr3'};
            app.CounterChannelInputDropDown_2.Position = [764 39 100 22];
            app.CounterChannelInputDropDown_2.Value = 'ctr2';

            % Create maxauEditField_2Label
            app.maxauEditField_2Label = uilabel(app.SecondChannelSettingsPanel);
            app.maxauEditField_2Label.HorizontalAlignment = 'right';
            app.maxauEditField_2Label.Position = [449 5 54 22];
            app.maxauEditField_2Label.Text = 'max, a.u.';

            % Create maxauEditField_2
            app.maxauEditField_2 = uieditfield(app.SecondChannelSettingsPanel, 'numeric');
            app.maxauEditField_2.ValueChangedFcn = createCallbackFcn(app, @maxauEditField_2ValueChanged, true);
            app.maxauEditField_2.Enable = 'off';
            app.maxauEditField_2.Position = [508 5 31 22];
            app.maxauEditField_2.Value = 10;

            % Create minauEditField_2Label
            app.minauEditField_2Label = uilabel(app.SecondChannelSettingsPanel);
            app.minauEditField_2Label.HorizontalAlignment = 'right';
            app.minauEditField_2Label.Position = [356 5 49 22];
            app.minauEditField_2Label.Text = 'min, a.u';

            % Create minauEditField_2
            app.minauEditField_2 = uieditfield(app.SecondChannelSettingsPanel, 'numeric');
            app.minauEditField_2.ValueChangedFcn = createCallbackFcn(app, @minauEditField_2ValueChanged, true);
            app.minauEditField_2.Enable = 'off';
            app.minauEditField_2.Position = [412 5 31 22];

            % Create AutoscaleCheckBox_2
            app.AutoscaleCheckBox_2 = uicheckbox(app.SecondChannelSettingsPanel);
            app.AutoscaleCheckBox_2.ValueChangedFcn = createCallbackFcn(app, @AutoscaleCheckBox_2ValueChanged, true);
            app.AutoscaleCheckBox_2.Text = 'Autoscale';
            app.AutoscaleCheckBox_2.Position = [646 5 75 22];
            app.AutoscaleCheckBox_2.Value = true;

            % Create ThirdChannelSettingsPanel
            app.ThirdChannelSettingsPanel = uipanel(app.SettingsTab);
            app.ThirdChannelSettingsPanel.AutoResizeChildren = 'off';
            app.ThirdChannelSettingsPanel.Title = 'Third Channel Settings';
            app.ThirdChannelSettingsPanel.Position = [18 398 1022 84];

            % Create Switch_3
            app.Switch_3 = uiswitch(app.ThirdChannelSettingsPanel, 'slider');
            app.Switch_3.Items = {'Analog', 'Counter'};
            app.Switch_3.ValueChangedFcn = createCallbackFcn(app, @Switch_3ValueChanged, true);
            app.Switch_3.Position = [426 40 45 20];
            app.Switch_3.Value = 'Analog';

            % Create AnalogChannelInputDropDown_3Label
            app.AnalogChannelInputDropDown_3Label = uilabel(app.ThirdChannelSettingsPanel);
            app.AnalogChannelInputDropDown_3Label.HorizontalAlignment = 'right';
            app.AnalogChannelInputDropDown_3Label.Enable = 'off';
            app.AnalogChannelInputDropDown_3Label.Position = [2 5 121 22];
            app.AnalogChannelInputDropDown_3Label.Text = 'Analog Channel Input';

            % Create AnalogChannelInputDropDown_3
            app.AnalogChannelInputDropDown_3 = uidropdown(app.ThirdChannelSettingsPanel);
            app.AnalogChannelInputDropDown_3.Items = {'ai0', 'ai1', 'ai2', 'ai3'};
            app.AnalogChannelInputDropDown_3.Enable = 'off';
            app.AnalogChannelInputDropDown_3.Position = [138 5 100 22];
            app.AnalogChannelInputDropDown_3.Value = 'ai2';

            % Create ConnectiontypeDropDown_3Label
            app.ConnectiontypeDropDown_3Label = uilabel(app.ThirdChannelSettingsPanel);
            app.ConnectiontypeDropDown_3Label.HorizontalAlignment = 'right';
            app.ConnectiontypeDropDown_3Label.Enable = 'off';
            app.ConnectiontypeDropDown_3Label.Position = [2 35 92 22];
            app.ConnectiontypeDropDown_3Label.Text = 'Connection type';

            % Create ConnectiontypeDropDown_3
            app.ConnectiontypeDropDown_3 = uidropdown(app.ThirdChannelSettingsPanel);
            app.ConnectiontypeDropDown_3.Items = {'Single Ended (RSE)'};
            app.ConnectiontypeDropDown_3.ItemsData = {'SingleEnded'};
            app.ConnectiontypeDropDown_3.Enable = 'off';
            app.ConnectiontypeDropDown_3.Position = [109 35 142 22];
            app.ConnectiontypeDropDown_3.Value = 'SingleEnded';

            % Create CounterChannelInputDropDown_3Label
            app.CounterChannelInputDropDown_3Label = uilabel(app.ThirdChannelSettingsPanel);
            app.CounterChannelInputDropDown_3Label.HorizontalAlignment = 'right';
            app.CounterChannelInputDropDown_3Label.Position = [623 39 126 22];
            app.CounterChannelInputDropDown_3Label.Text = 'Counter Channel Input';

            % Create CounterChannelInputDropDown_3
            app.CounterChannelInputDropDown_3 = uidropdown(app.ThirdChannelSettingsPanel);
            app.CounterChannelInputDropDown_3.Items = {'ctr0', 'ctr1', 'ctr2', 'ctr3'};
            app.CounterChannelInputDropDown_3.Position = [764 39 100 22];
            app.CounterChannelInputDropDown_3.Value = 'ctr1';

            % Create maxauEditField_3Label
            app.maxauEditField_3Label = uilabel(app.ThirdChannelSettingsPanel);
            app.maxauEditField_3Label.HorizontalAlignment = 'right';
            app.maxauEditField_3Label.Position = [449 5 54 22];
            app.maxauEditField_3Label.Text = 'max, a.u.';

            % Create maxauEditField_3
            app.maxauEditField_3 = uieditfield(app.ThirdChannelSettingsPanel, 'numeric');
            app.maxauEditField_3.ValueChangedFcn = createCallbackFcn(app, @maxauEditField_3ValueChanged, true);
            app.maxauEditField_3.Enable = 'off';
            app.maxauEditField_3.Position = [508 5 31 22];
            app.maxauEditField_3.Value = 10;

            % Create minauEditField_3Label
            app.minauEditField_3Label = uilabel(app.ThirdChannelSettingsPanel);
            app.minauEditField_3Label.HorizontalAlignment = 'right';
            app.minauEditField_3Label.Position = [356 5 49 22];
            app.minauEditField_3Label.Text = 'min, a.u';

            % Create minauEditField_3
            app.minauEditField_3 = uieditfield(app.ThirdChannelSettingsPanel, 'numeric');
            app.minauEditField_3.ValueChangedFcn = createCallbackFcn(app, @minauEditField_3ValueChanged, true);
            app.minauEditField_3.Enable = 'off';
            app.minauEditField_3.Position = [412 5 31 22];

            % Create AutoscaleCheckBox_3
            app.AutoscaleCheckBox_3 = uicheckbox(app.ThirdChannelSettingsPanel);
            app.AutoscaleCheckBox_3.ValueChangedFcn = createCallbackFcn(app, @AutoscaleCheckBox_3ValueChanged, true);
            app.AutoscaleCheckBox_3.Text = 'Autoscale';
            app.AutoscaleCheckBox_3.Position = [646 5 75 22];
            app.AutoscaleCheckBox_3.Value = true;

            % Create FourthChannelSettingsPanel
            app.FourthChannelSettingsPanel = uipanel(app.SettingsTab);
            app.FourthChannelSettingsPanel.AutoResizeChildren = 'off';
            app.FourthChannelSettingsPanel.Title = 'Fourth Channel Settings';
            app.FourthChannelSettingsPanel.Position = [18 316 1022 84];

            % Create Switch_4
            app.Switch_4 = uiswitch(app.FourthChannelSettingsPanel, 'slider');
            app.Switch_4.Items = {'Analog', 'Counter'};
            app.Switch_4.ValueChangedFcn = createCallbackFcn(app, @Switch_4ValueChanged, true);
            app.Switch_4.Position = [426 40 45 20];
            app.Switch_4.Value = 'Analog';

            % Create AnalogChannelInputDropDown_4Label
            app.AnalogChannelInputDropDown_4Label = uilabel(app.FourthChannelSettingsPanel);
            app.AnalogChannelInputDropDown_4Label.HorizontalAlignment = 'right';
            app.AnalogChannelInputDropDown_4Label.Enable = 'off';
            app.AnalogChannelInputDropDown_4Label.Position = [2 5 121 22];
            app.AnalogChannelInputDropDown_4Label.Text = 'Analog Channel Input';

            % Create AnalogChannelInputDropDown_4
            app.AnalogChannelInputDropDown_4 = uidropdown(app.FourthChannelSettingsPanel);
            app.AnalogChannelInputDropDown_4.Items = {'ai0', 'ai1', 'ai2', 'ai3'};
            app.AnalogChannelInputDropDown_4.Enable = 'off';
            app.AnalogChannelInputDropDown_4.Position = [138 5 100 22];
            app.AnalogChannelInputDropDown_4.Value = 'ai3';

            % Create ConnectiontypeDropDown_4Label
            app.ConnectiontypeDropDown_4Label = uilabel(app.FourthChannelSettingsPanel);
            app.ConnectiontypeDropDown_4Label.HorizontalAlignment = 'right';
            app.ConnectiontypeDropDown_4Label.Enable = 'off';
            app.ConnectiontypeDropDown_4Label.Position = [2 35 92 22];
            app.ConnectiontypeDropDown_4Label.Text = 'Connection type';

            % Create ConnectiontypeDropDown_4
            app.ConnectiontypeDropDown_4 = uidropdown(app.FourthChannelSettingsPanel);
            app.ConnectiontypeDropDown_4.Items = {'Single Ended (RSE)'};
            app.ConnectiontypeDropDown_4.ItemsData = {'SingleEnded'};
            app.ConnectiontypeDropDown_4.Enable = 'off';
            app.ConnectiontypeDropDown_4.Position = [109 35 142 22];
            app.ConnectiontypeDropDown_4.Value = 'SingleEnded';

            % Create CounterChannelInputDropDown_4Label
            app.CounterChannelInputDropDown_4Label = uilabel(app.FourthChannelSettingsPanel);
            app.CounterChannelInputDropDown_4Label.HorizontalAlignment = 'right';
            app.CounterChannelInputDropDown_4Label.Position = [623 39 126 22];
            app.CounterChannelInputDropDown_4Label.Text = 'Counter Channel Input';

            % Create CounterChannelInputDropDown_4
            app.CounterChannelInputDropDown_4 = uidropdown(app.FourthChannelSettingsPanel);
            app.CounterChannelInputDropDown_4.Items = {'ctr0', 'ctr1', 'ctr2', 'ctr3'};
            app.CounterChannelInputDropDown_4.Position = [764 39 100 22];
            app.CounterChannelInputDropDown_4.Value = 'ctr0';

            % Create maxauEditField_4Label
            app.maxauEditField_4Label = uilabel(app.FourthChannelSettingsPanel);
            app.maxauEditField_4Label.HorizontalAlignment = 'right';
            app.maxauEditField_4Label.Position = [449 5 54 22];
            app.maxauEditField_4Label.Text = 'max, a.u.';

            % Create maxauEditField_4
            app.maxauEditField_4 = uieditfield(app.FourthChannelSettingsPanel, 'numeric');
            app.maxauEditField_4.ValueChangedFcn = createCallbackFcn(app, @maxauEditField_4ValueChanged, true);
            app.maxauEditField_4.Enable = 'off';
            app.maxauEditField_4.Position = [508 5 31 22];
            app.maxauEditField_4.Value = 10;

            % Create minauEditField_4Label
            app.minauEditField_4Label = uilabel(app.FourthChannelSettingsPanel);
            app.minauEditField_4Label.HorizontalAlignment = 'right';
            app.minauEditField_4Label.Position = [356 5 49 22];
            app.minauEditField_4Label.Text = 'min, a.u';

            % Create minauEditField_4
            app.minauEditField_4 = uieditfield(app.FourthChannelSettingsPanel, 'numeric');
            app.minauEditField_4.ValueChangedFcn = createCallbackFcn(app, @minauEditField_4ValueChanged, true);
            app.minauEditField_4.Enable = 'off';
            app.minauEditField_4.Position = [412 5 31 22];

            % Create AutoscaleCheckBox_4
            app.AutoscaleCheckBox_4 = uicheckbox(app.FourthChannelSettingsPanel);
            app.AutoscaleCheckBox_4.ValueChangedFcn = createCallbackFcn(app, @AutoscaleCheckBox_4ValueChanged, true);
            app.AutoscaleCheckBox_4.Text = 'Autoscale';
            app.AutoscaleCheckBox_4.Position = [646 5 75 22];
            app.AutoscaleCheckBox_4.Value = true;

            % Create PolarMotorPortEditFieldLabel
            app.PolarMotorPortEditFieldLabel = uilabel(app.SettingsTab);
            app.PolarMotorPortEditFieldLabel.HorizontalAlignment = 'right';
            app.PolarMotorPortEditFieldLabel.Position = [884 737 93 22];
            app.PolarMotorPortEditFieldLabel.Text = 'Polar Motor Port';

            % Create PolarMotorPortEditField
            app.PolarMotorPortEditField = uieditfield(app.SettingsTab, 'text');
            app.PolarMotorPortEditField.Position = [992 737 50 22];
            app.PolarMotorPortEditField.Value = 'COM7';

            % Create TimeLagForPolarMotorsecEditFieldLabel
            app.TimeLagForPolarMotorsecEditFieldLabel = uilabel(app.SettingsTab);
            app.TimeLagForPolarMotorsecEditFieldLabel.HorizontalAlignment = 'right';
            app.TimeLagForPolarMotorsecEditFieldLabel.Position = [809 699 166 22];
            app.TimeLagForPolarMotorsecEditFieldLabel.Text = 'Time Lag For Polar Motor, sec';

            % Create TimeLagForPolarMotorsecEditField
            app.TimeLagForPolarMotorsecEditField = uieditfield(app.SettingsTab, 'numeric');
            app.TimeLagForPolarMotorsecEditField.ValueChangedFcn = createCallbackFcn(app, @TimeLagForPolarMotorsecEditFieldValueChanged, true);
            app.TimeLagForPolarMotorsecEditField.Position = [990 699 50 22];
            app.TimeLagForPolarMotorsecEditField.Value = 3;

            % Create SavingSettingsTab
            app.SavingSettingsTab = uitab(app.TabGroup);
            app.SavingSettingsTab.AutoResizeChildren = 'off';
            app.SavingSettingsTab.Title = 'Saving Settings';

            % Create SavingfolderEditFieldLabel
            app.SavingfolderEditFieldLabel = uilabel(app.SavingSettingsTab);
            app.SavingfolderEditFieldLabel.HorizontalAlignment = 'right';
            app.SavingfolderEditFieldLabel.Position = [10 744 76 22];
            app.SavingfolderEditFieldLabel.Text = 'Saving folder';

            % Create SavingfolderEditField
            app.SavingfolderEditField = uieditfield(app.SavingSettingsTab, 'text');
            app.SavingfolderEditField.Position = [91 744 483 22];
            app.SavingfolderEditField.Value = 'C:\Users\Public\Pictures\';

            % Create FilenameCommentEditFieldLabel
            app.FilenameCommentEditFieldLabel = uilabel(app.SavingSettingsTab);
            app.FilenameCommentEditFieldLabel.HorizontalAlignment = 'right';
            app.FilenameCommentEditFieldLabel.Position = [10 710 110 22];
            app.FilenameCommentEditFieldLabel.Text = 'Filename Comment';

            % Create FilenameCommentEditField
            app.FilenameCommentEditField = uieditfield(app.SavingSettingsTab, 'text');
            app.FilenameCommentEditField.Position = [133 710 441 22];
            app.FilenameCommentEditField.Value = '_test_sample_';

            % Create LogTextAreaLabel
            app.LogTextAreaLabel = uilabel(app.MatMicroMain);
            app.LogTextAreaLabel.HorizontalAlignment = 'right';
            app.LogTextAreaLabel.Position = [9 93 26 22];
            app.LogTextAreaLabel.Text = {'Log'; ''};

            % Create LogTextArea
            app.LogTextArea = uitextarea(app.MatMicroMain);
            app.LogTextArea.Editable = 'off';
            app.LogTextArea.Position = [50 14 1011 103];
        end
    end

    methods (Access = public)

        % Construct app
        function app = microMOSAIC

            % Create and configure components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.MatMicroMain)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.MatMicroMain)
        end
    end
end