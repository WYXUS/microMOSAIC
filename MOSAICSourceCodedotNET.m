classdef microMOSAICdotNET < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        MatMicroMain                    matlab.ui.Figure
        LogTextArea                     matlab.ui.control.TextArea
        LogTextAreaLabel                matlab.ui.control.Label
        TabGroup                        matlab.ui.container.TabGroup
        MainTab                         matlab.ui.container.Tab
        ZstackPanel                     matlab.ui.container.Panel
        AcquireZstackButton             matlab.ui.control.Button
        ZGauge                          matlab.ui.control.LinearGauge
        ZGaugeLabel                     matlab.ui.control.Label
        ZStepEditField                  matlab.ui.control.NumericEditField
        ZStepEditFieldLabel             matlab.ui.control.Label
        EndingZumEditField              matlab.ui.control.NumericEditField
        EndingZumEditFieldLabel         matlab.ui.control.Label
        StartingZumEditField            matlab.ui.control.NumericEditField
        StartingZumEditFieldLabel       matlab.ui.control.Label
        PixelRepetitionEditField        matlab.ui.control.NumericEditField
        PixelRepetitionEditFieldLabel   matlab.ui.control.Label
        ZoomPanel                       matlab.ui.container.Panel
        ChannelDropDown                 matlab.ui.control.DropDown
        ChannelDropDownLabel            matlab.ui.control.Label
        ZoomOutButton                   matlab.ui.control.Button
        ZoomInButton                    matlab.ui.control.Button
        ZoomfactorEditField             matlab.ui.control.NumericEditField
        ZoomfactorEditFieldLabel        matlab.ui.control.Label
        FoVcenterYumEditField           matlab.ui.control.NumericEditField
        FoVcenterYumEditFieldLabel      matlab.ui.control.Label
        FoVcenterXumEditField           matlab.ui.control.NumericEditField
        FoVcenterXumEditFieldLabel      matlab.ui.control.Label
        PolarPanel                      matlab.ui.container.Panel
        StepAngledegrEditField          matlab.ui.control.NumericEditField
        StepAngledegrEditFieldLabel     matlab.ui.control.Label
        TakePolarStackButton            matlab.ui.control.Button
        EndingAngledegrEditField        matlab.ui.control.NumericEditField
        EndingAngledegrEditFieldLabel   matlab.ui.control.Label
        StartingAngledegrEditField      matlab.ui.control.NumericEditField
        StartingAngledegrEditFieldLabel  matlab.ui.control.Label
        CurrentAngledegrGauge           matlab.ui.control.SemicircularGauge
        CurrentAngledegrGaugeLabel      matlab.ui.control.Label
        InitializePolarMotorButton      matlab.ui.control.Button
        SimulationmodeCheckBox          matlab.ui.control.CheckBox
        LiveButton                      matlab.ui.control.StateButton
        TestbuttondontpressButton       matlab.ui.control.Button
        NumberOfAccumulationsEditField  matlab.ui.control.NumericEditField
        NumberOfAccumulationsEditFieldLabel  matlab.ui.control.Label
        ScanResolutionumEditField       matlab.ui.control.NumericEditField
        ScanResolutionumLabel           matlab.ui.control.Label
        ScanRangeYumEditField           matlab.ui.control.NumericEditField
        ScanRangeYumLabel               matlab.ui.control.Label
        ScanRangeXumEditField           matlab.ui.control.NumericEditField
        ScanRangeXumEditFieldLabel      matlab.ui.control.Label
        ScanSaveButton                  matlab.ui.control.Button
        ReadyLamp                       matlab.ui.control.Lamp
        ReadyLampLabel                  matlab.ui.control.Label
        InitializeButton                matlab.ui.control.Button
        LiveTab                         matlab.ui.container.Tab
        Button                          matlab.ui.control.StateButton
        MinEditField                    matlab.ui.control.NumericEditField
        MinEditFieldLabel               matlab.ui.control.Label
        MaxEditField                    matlab.ui.control.NumericEditField
        MaxEditFieldLabel               matlab.ui.control.Label
        AutoscaleCheckBox_5             matlab.ui.control.CheckBox
        ChannelForImagePixelSelectionDropDown  matlab.ui.control.DropDown
        ChannelForImagePixelSelectionDropDownLabel  matlab.ui.control.Label
        RefreshrateLabel                matlab.ui.control.Label
        SlowerLabel                     matlab.ui.control.Label
        StartLiveButton                 matlab.ui.control.StateButton
        FasterSlider                    matlab.ui.control.Slider
        FasterSliderLabel               matlab.ui.control.Label
        UIAxes                          matlab.ui.control.UIAxes
        SettingsTab                     matlab.ui.container.Tab
        PixelRepetitionEditField_2      matlab.ui.control.NumericEditField
        PixelRepetitionEditField_2Label  matlab.ui.control.Label
        PixelDwellTimeusEditField       matlab.ui.control.NumericEditField
        PixelDwellTimeusEditFieldLabel  matlab.ui.control.Label
        CounterGenerationChannelEditField  matlab.ui.control.EditField
        CounterGenerationChannelEditFieldLabel  matlab.ui.control.Label
        DutyCycleEditField              matlab.ui.control.NumericEditField
        DutyCycleEditFieldLabel         matlab.ui.control.Label
        CounterTerminalForSquarePulseGenerationEditField  matlab.ui.control.EditField
        CounterTerminalForSquarePulseGenerationLabel  matlab.ui.control.Label
        CounterBaseSwitch               matlab.ui.control.Switch
        CounterBaseSwitchLabel          matlab.ui.control.Label
        TimeLagForPolarMotorsecEditField  matlab.ui.control.NumericEditField
        TimeLagForPolarMotorsecEditFieldLabel  matlab.ui.control.Label
        PolarMotorPortEditField         matlab.ui.control.EditField
        PolarMotorPortEditFieldLabel    matlab.ui.control.Label
        FourthChannelSettingsPanel      matlab.ui.container.Panel
        AutoscaleCheckBox_4             matlab.ui.control.CheckBox
        minauEditField_4                matlab.ui.control.NumericEditField
        minauEditField_4Label           matlab.ui.control.Label
        maxauEditField_4                matlab.ui.control.NumericEditField
        maxauEditField_4Label           matlab.ui.control.Label
        CounterChannelInputDropDown_4   matlab.ui.control.DropDown
        CounterChannelInputDropDown_4Label  matlab.ui.control.Label
        ConnectiontypeDropDown_4        matlab.ui.control.DropDown
        ConnectiontypeDropDown_4Label   matlab.ui.control.Label
        AnalogChannelInputDropDown_4    matlab.ui.control.DropDown
        AnalogChannelInputDropDown_4Label  matlab.ui.control.Label
        Switch_4                        matlab.ui.control.Switch
        ThirdChannelSettingsPanel       matlab.ui.container.Panel
        AutoscaleCheckBox_3             matlab.ui.control.CheckBox
        minauEditField_3                matlab.ui.control.NumericEditField
        minauEditField_3Label           matlab.ui.control.Label
        maxauEditField_3                matlab.ui.control.NumericEditField
        maxauEditField_3Label           matlab.ui.control.Label
        CounterChannelInputDropDown_3   matlab.ui.control.DropDown
        CounterChannelInputDropDown_3Label  matlab.ui.control.Label
        ConnectiontypeDropDown_3        matlab.ui.control.DropDown
        ConnectiontypeDropDown_3Label   matlab.ui.control.Label
        AnalogChannelInputDropDown_3    matlab.ui.control.DropDown
        AnalogChannelInputDropDown_3Label  matlab.ui.control.Label
        Switch_3                        matlab.ui.control.Switch
        SecondChannelSettingsPanel      matlab.ui.container.Panel
        AutoscaleCheckBox_2             matlab.ui.control.CheckBox
        minauEditField_2                matlab.ui.control.NumericEditField
        minauEditField_2Label           matlab.ui.control.Label
        maxauEditField_2                matlab.ui.control.NumericEditField
        maxauEditField_2Label           matlab.ui.control.Label
        CounterChannelInputDropDown_2   matlab.ui.control.DropDown
        CounterChannelInputDropDown_2Label  matlab.ui.control.Label
        ConnectiontypeDropDown_2        matlab.ui.control.DropDown
        ConnectiontypeDropDown_2Label   matlab.ui.control.Label
        AnalogChannelInputDropDown_2    matlab.ui.control.DropDown
        AnalogChannelInputDropDown_2Label  matlab.ui.control.Label
        Switch_2                        matlab.ui.control.Switch
        NumberOfChannelsSlider          matlab.ui.control.Slider
        NumberOfChannelsSliderLabel     matlab.ui.control.Label
        FirstChannelSettingsPanel       matlab.ui.container.Panel
        AutoscaleCheckBox               matlab.ui.control.CheckBox
        maxauEditField                  matlab.ui.control.NumericEditField
        maxauEditFieldLabel             matlab.ui.control.Label
        minauEditField                  matlab.ui.control.NumericEditField
        minauEditFieldLabel             matlab.ui.control.Label
        CounterChannelInputDropDown     matlab.ui.control.DropDown
        CounterChannelInputDropDownLabel  matlab.ui.control.Label
        ConnectiontypeDropDown          matlab.ui.control.DropDown
        ConnectiontypeDropDownLabel     matlab.ui.control.Label
        AnalogChannelInputDropDown      matlab.ui.control.DropDown
        AnalogChannelInputDropDownLabel  matlab.ui.control.Label
        Switch                          matlab.ui.control.Switch
        DeviceNameEditField             matlab.ui.control.EditField
        DeviceNameEditFieldLabel        matlab.ui.control.Label
        SessionUpdateRateHzEditField    matlab.ui.control.NumericEditField
        SessionUpdateRateHzEditFieldLabel  matlab.ui.control.Label
        ObjectiveDropDown               matlab.ui.control.DropDown
        ObjectiveDropDownLabel          matlab.ui.control.Label
        SavingSettingsTab               matlab.ui.container.Tab
        FilenameCommentEditField        matlab.ui.control.EditField
        FilenameCommentEditFieldLabel   matlab.ui.control.Label
        SavingfolderEditField           matlab.ui.control.EditField
        SavingfolderEditFieldLabel      matlab.ui.control.Label
        DelaylineTab                    matlab.ui.container.Tab
        Button2                         matlab.ui.control.Button
        ChannelEditField                matlab.ui.control.EditField
        ChannelEditFieldLabel           matlab.ui.control.Label
        StepmmEditField                 matlab.ui.control.NumericEditField
        StepmmEditFieldLabel            matlab.ui.control.Label
        RangemmEditField                matlab.ui.control.NumericEditField
        RangemmEditFieldLabel           matlab.ui.control.Label
        OffsetmmEditField               matlab.ui.control.NumericEditField
        OffsetmmEditFieldLabel          matlab.ui.control.Label
        ScandelayButton                 matlab.ui.control.Button
        MoveButton                      matlab.ui.control.Button
        PositionEditField               matlab.ui.control.NumericEditField
        PositionEditFieldLabel          matlab.ui.control.Label
        DelayLineConnectionPanel        matlab.ui.container.Panel
        PortEditField                   matlab.ui.control.EditField
        PortEditFieldLabel              matlab.ui.control.Label
        ConnectioninterfaceDropDown     matlab.ui.control.DropDown
        ConnectioninterfaceDropDownLabel  matlab.ui.control.Label
        ControllerserialnumberEditField  matlab.ui.control.EditField
        ControllerserialnumberEditFieldLabel  matlab.ui.control.Label
        StagetypeEditField              matlab.ui.control.EditField
        StagetypeEditFieldLabel         matlab.ui.control.Label
        ConnectDelayLineButton          matlab.ui.control.Button
        UIAxes2                         matlab.ui.control.UIAxes
        PIFOCTab                        matlab.ui.container.Tab
        SetZPositionEditField           matlab.ui.control.NumericEditField
        SetZPositionEditFieldLabel      matlab.ui.control.Label
        MoveZButton                     matlab.ui.control.Button
        PIFOCConnectionPanel            matlab.ui.container.Panel
        PIFOCControllerSerialNumberDropDown  matlab.ui.control.DropDown
        PIFOCControllerSerialNumberDropDownLabel  matlab.ui.control.Label
        PortEditField_2                 matlab.ui.control.EditField
        PortEditField_2Label            matlab.ui.control.Label
        PIFOCConnectionInterfaceDropDown  matlab.ui.control.DropDown
        PIFOCConnectionInterfaceDropDownLabel  matlab.ui.control.Label
        PIFOCStageTypeEditField         matlab.ui.control.EditField
        PIFOCStageTypeEditFieldLabel    matlab.ui.control.Label
        ConnectPIFOCButton              matlab.ui.control.Button
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
        displayFigure % Description
        stage % delay line
        PIaxis % Description
        Controller % Description
        ControllerPIFOC % Description
        stagePIFOC;
        
        PIFOCaxis % Description
        Dev % daq card adress
        I % daq namespace
        pixRep % pixel repetition for counter gated acquisition
        dwellTime % pixel dwell time for counter gated aquisition
        pixFreq % pixel acquisition frequency
        numberOfPoints % number of points in a scan
        dutyCycle % counter gate duty cycle
        counterGateTerminal% terminal where square pulses are produced
    end
    
    methods (Access = private)
        
        function grabData(app,~,event)
            buf = event.Data;
            
            size=int16(sqrt(length(buf(:,1)) / app.pixRepetition));
            signal = zeros(size,size,app.NumberOfEnabledChannels);
            
                
                for channel=1:app.NumberOfEnabledChannels
                    if app.channelsData(channel,2)== true
                        d = diff(buf(:,channel));
                        buf2 = [mean(d);  d];                       
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
            
            drawImages(app, app.firstDraw,signal)
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
            
            
            size = int32(sqrt(length(coordPoints(:,1))/pixRep));       % image size
            signal = zeros(size, size,app.NumberOfEnabledChannels);       % Array where signal data is stored
            
            for images=1:accumulation
                app.imSession.outputSingleScan([coordPoints(1,1) coordPoints(1,2)])     % if there is a time lag, this should account for it
                app.imSession.queueOutputData([coordPoints(:,2) coordPoints(:,1)]);         % send data to the DAQ card
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
%             app.imSession.outputSingleScan([0,0]);         % return to the image center
            
        end
        
        function  printLogWindow(app, line)
            %            str = app.LogTextArea.Value+"\n" + line
            %             app.LogTextArea.Value = compose(str)
            line = datestr(now,'HH:MM')+" "+line;
            app.LogTextArea.Value =[line; app.LogTextArea.Value];
        end
        
        function setAxes(app, imSize)
            app.ax = [];
            imSize = 0.45;
            if ~ishandle(app.displayFigure)         % check if figure for displaying exists                                
                app.displayFigure = figure('Name',app.MatMicroMain.Name,'NumberTitle','off');       % create figure if doesn't exist
            end
            app.ax =[app.ax axes(app.displayFigure,'Position',[0 imSize imSize imSize])];
            app.ax =[app.ax axes(app.displayFigure,'Position',[imSize imSize imSize imSize])];
            app.ax =[app.ax axes(app.displayFigure,'Position',[0 0 imSize imSize])];
            app.ax =[app.ax axes(app.displayFigure,'Position',[imSize 0 imSize imSize])];
            set(app.ax,'visible','off');
            axis(app.ax,'image');
            
            for axs=1:length(app.ax)                
                set(app.ax(axs), 'XTick',[], 'YTick',[]) %Fill the window
            end
        end
        
        
        function results = setChannelParameters(app)
            for i=1:app.NumberOfEnabledChannels
                app.channelsData()
            end
            
        end
        

        function drawImages(app,firstDraw,data)
            if ~ishandle(app.displayFigure)         % check if figure for displaying exists                                
                app.displayFigure = figure('Name',app.MatMicroMain.Name,'NumberTitle','off');       % create figure if doesn't exist
                setAxes(app,0.5)                    % create axes
                firstDraw = true;               % complete redraw next time
            end

            if firstDraw ==true
                app.ims=[];
            end
            for channel = app.NumberOfEnabledChannels:-1:1
                if firstDraw==true
                    minLim = min(data(:,:,channel),[],'all');
                    maxLim = max(data(:,:,channel),[],'all');
                    im =imshow(data(:,:,channel),[minLim maxLim],'Parent',app.ax(channel),'Colormap',parula(256));colorbar(app.ax(channel));%colormap(parula(256));pbaspect(app.ax(channel),[1,1,1]);                     
                    app.ims = [im app.ims ];
%                     if app.channelsData(channel,3) == false
%                         caxis(app.ax(channel), [app.channelsData(channel,4) app.channelsData(channel,5)]);
%                     else
                        %caxis(app.ax(channel), [min(min(app.signalData(:,:,channel))) max(max(app.signalData(:,:,channel)))]);
                        
%                     end
                    
                else
                    maxLim = max(data(:,:,channel),[],'all');
                    if isvalid(app.ims(channel))
                        set(app.ims(channel),'CData',data(:,:,channel));
                    end
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
                app.signalData =NLimagingCoords(app ,app.coordPoints, app.numberOfAccums,app.pixRepetition);
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

        
        
        function [stage, PIaxis, stageConnected] = StartStage(app, Controller,connectionInterface, stageType,controllerSerialNumber)
            
            %Start connection (if not already connected)
            
%             if ( ~(app.stageConnected ) )
                % USB
                %stageType = 'M-415.2S';% 113013743     stageType = 'P-725.4CD'
                %controllerSerialNumber = '0125500210';    % Use "devicesUsb = Controller.EnumerateUSB('')" to get all PI controller connected to you PC.
                if connectionInterface == "USB"
                    stage = Controller.ConnectUSB ( controllerSerialNumber ); %Or look at the label of the case of your controller
                else
                    stage = Controller.ConnectSerial( controllerSerialNumber ); %Or look at the label of the case of your controller
                end
                stageConnected=true;
%             end
            
            % Query controller identification string
            connectedControllerName = stage.qIDN();
            
            % initialize PIdevice object for use in MATLAB
            stage = stage.InitializeController ();
            
            %Startup Stage
            PIaxis = '1';
            
            % switch servo on for axis
            switchOn    = 1;
            % switchOff   = 0;
            stage.SVO ( PIaxis, switchOn );
            
        end
        
        function ReferenceStage(app,stage, PIaxis)
            printLogWindow(app,"Referencing the stage");
            stage.FRF ( PIaxis );  % find reference

            % wait for referencing to finish
            while(0 ~= stage.qFRF ( PIaxis ) == 0 )
                pause(0.1);
                
            end
            printLogWindow(app,".. done!");
        end

function [stage, PIaxis, stageConnected] = StartPIStage(Controller,stageConnected)

%Start connection (if not already connected)
stageConnected = false; if ( exist ( 'stage', 'var' ) ), if ( stage.IsConnected ), stageConnected = true; end; end;
if ( ~(stageConnected ) )
    % USB
    stageType ='P-725.4CA';% 113013743     '
    controllerSerialNumber = '0116034575';    % Use "devicesUsb = Controller.EnumerateUSB('')" to get all PI controller connected to you PC.
   %controllerSerialNumber = '';
    stage = Controller.ConnectUSB ( controllerSerialNumber ); %Or look at the label of the case of your controller
    stageConnected=true;
end

% Query controller identification string
connectedControllerName = stage.qIDN();

% initialize PIdevice object for use in MATLAB
stage = stage.InitializeController ();

%Startup Stage
PIaxis = 'Z';

% switch servo on for axis
switchOn    = 1;
% switchOff   = 0;
stage.SVO ( PIaxis, switchOn );

        

end
        
function [stage, PIaxis, stageConnected] = ConnectPIFOC(app,Controller,connectionType,PIFOCStageType,controllerSerialNumber)%(app,app.ControllerPIFOC,app.PIFOCConnectionInterfaceDropDown.Value,app.PIFOCStageTypeEditField.Value,app.PIFOCControllerSerialNumberEditField.Value);

%Start connection (if not already connected)
stageConnected = false; if ( exist ( 'stage', 'var' ) ), if ( stage.IsConnected ), stageConnected = true; end; end;
if ( ~(stageConnected ) )
    % USB
%     stageType = 'P-725.4CD';% 113013743     stageType = 'P-725.4CD'
%     controllerSerialNumber = '12220';    % Use "devicesUsb = Controller.EnumerateUSB('')" to get all PI controller connected to you PC.
   %controllerSerialNumber = '';
    stage = Controller.ConnectUSB ( controllerSerialNumber ); %Or look at the label of the case of your controller
    stageConnected=true;
end

% Query controller identification string
connectedControllerName = stage.qIDN();

% initialize PIdevice object for use in MATLAB
stage = stage.InitializeController ();
if str2double(controllerSerialNumber) == 120004758
    PIaxis = 'Z';
elseif str2double(controllerSerialNumber )== 12220
    PIaxis = 'A';
end
%Startup Stage


% switch servo on for axis
switchOn    = 1;
% switchOff   = 0;
stage.SVO ( PIaxis, switchOn );

        end
        
        function results = acquireZStack(app)
                        printLogWindow(app,'Acquiring Z stack, please wait')
            app.AcquireZstackButton.Enable = false;
            app.LiveButton.Enable = false;
            app.ScanSaveButton.Enable = false;
            firstDraw = true;
            try
                ZStart = app.StartingZumEditField.Value; ZStop = app.EndingZumEditField.Value; ZStep = app.ZStepEditField.Value;
                Z= ZStart;
                
                saveTIFF = true; saveHDF5 = false;      % define in what formats the data will be saved
                dataZCUBE = zeros(int16(app.scanXRange /  (app.scanStep))+1,int16(app.scanYRange /  app.scanStep)+1, int8((ZStop-ZStart)/ZStep)+1, app.NumberOfEnabledChannels);       % the data cube with the complete Polar stack
                app.stagePIFOC.MOV(app.PIFOCaxis,Z)
                
                printLogWindow(app, 'Acquiring Z stack, please wait');
                pause(0.1);
                localIterator = 0;
                while Z<=ZStop
                    localIterator = localIterator +1;
                    printLogWindow(app, 'Acquiring Z stack, please wait')
                    app.stagePIFOC.MOV(app.PIFOCaxis,Z)
                    app.signalData = NLimagingCoords(app,app.coordPoints, app.numberOfAccums, app.pixRepetition);
                    
                    for channel =1 :app.NumberOfEnabledChannels
                        dataZCUBE(:, :, localIterator,channel) =  app.signalData(:,:,channel);                        
                    end
                    drawImages(app,firstDraw,app.signalData);
                    firstDraw=false;
                    Z = Z+ ZStep;
                end
                %FilenameComment='_Anlge'+num2str(AngleStart,'%03.f')+'-'+num2str(AngleStop,'%03.f')+'-'+num2str(AngleStep,'%03.f')+'-'+app.FilenameCommentEditField.Value;
                FilenameComment= '_ZStack_'+string(ZStart)+'-'+string(ZStop)+'-'+string(ZStep)+'-'+app.FilenameCommentEditField.Value;
                saveDataTiff(app,FilenameComment, dataZCUBE)
                
            catch ME
                printLogWindow(app,'Error, aborting..')
                printLogWindow(app, ME.message)
            end
            
            app.stagePIFOC.MOV(app.PIFOCaxis,ZStart)
            app.AcquireZstackButton.Enable = true;
            app.ScanSaveButton.Enable = true;
            app.LiveButton.Enable = true;
            printLogWindow(app, "Z stack - DONE!")
        end
        
        function results = addCounterChannels(app,ctrs)         % to be finished
            %meas pulse width with ctr2 @ PFI0
            CItask = NationalInstruments.DAQmx.Task;        % task for width measurement of the square pulses generated by COtask
            CIch = CItask.CIChannels.CreatePulseWidthChannel([app.DeviceNameEditField.Value, '/',ctr], 'CItask',0,2^32-1,CIPulseWidthStartingEdge.Rising,CIPulseWidthUnits.Ticks);
            % CIch = CItask.CIChannels.CreateCountEdgesChannel ('/Dev2/ctr2', 'CItask',CICountEdgesActiveEdge.Rising,int64(0),CICountEdgesCountDirection.Up);
            CIch.PulseWidthTerminal = [app.DeviceNameEditField.Value, '/',app.CounterTerminalForSquarePulseGenerationEditField.Value];        % a terminal, where square pulses are produced by COtask
            switch ctr
                case 'ctr0'
                    CIch.CounterTimebaseSource = '/Dev2/PFI0';      % a terminal, where a detector is connected
            end
        end
        
        function [aotask,aowriter, cotask, cowriter, aitask,aireader,citask,cireader]= initChannels(app)
            aotask = NationalInstruments.DAQmx.Task;        % a task to control the galvos
            aotask.AOChannels.CreateVoltageChannel(strcat(app.Dev, "ao0:1"), '',-10, 10,  NationalInstruments.DAQmx.AOVoltageUnits.Volts);    % output channels: the galvos
            % AOtask.Stream.WriteRegenerationMode = WriteRegenerationMode.AllowRegeneration;
            aotask.Timing.ConfigureSampleClock('',app.pixFreq,  NationalInstruments.DAQmx.SampleClockActiveEdge.Rising,  NationalInstruments.DAQmx.SampleQuantityMode.FiniteSamples, app.pixRep*app.numberOfPoints)    % a clock
            %             aotask.Control(TaskAction.Verify)   % check for task errors
            aowriter = NationalInstruments.DAQmx.AnalogMultiChannelWriter(aotask.Stream);     % create a writer
            aotask.Stream.Timeout=app.numberOfPoints  * app.pixRep/ app.pixFreq * 3 * 1000;     % set a timeout that is lager than a writing time
            if sum(app.channelsData(:,2)) > 0
                if app.CounterBaseSwitch.Value == 'Internal'
                    % produce square pulses with ctr0, because PFI8 doesn't have a bnc connector
                    cotask = NationalInstruments.DAQmx.Task;        % a task to generate quare pulses with 'pixFreq' and 'dutyCycle'
                    counterClockChannelNumber = app.CounterGenerationChannelEditField.Value;
                    cotask.COChannels.CreatePulseChannelFrequency(strcat(app.Dev, counterClockChannelNumber), '', NationalInstruments.DAQmx.COPulseFrequencyUnits.Hertz, NationalInstruments.DAQmx.COPulseIdleState.Low, 0, app.pixFreq, app.dutyCycle ); %delay, freq, dutycycle
                    cotask.Timing.ConfigureImplicit(NationalInstruments.DAQmx.SampleQuantityMode.FiniteSamples,app.pixRep * app.numberOfPoints)
                    cotask.Triggers.ArmStartTrigger.ConfigureDigitalEdgeTrigger(strcat(app.Dev,"ao/StartTrigger"),NationalInstruments.DAQmx.DigitalEdgeArmStartTriggerEdge.Rising);   % set a trigger. The generation starts when the output writer(galvos) start writing
                switch counterClockChannelNumber        % depending on which counter system is used for the square pulses generation 
                                                        % select a source 
                                                        % terminal for
                                                        % detector ctr
                                                        % channels
                                                        % 
                    case "ctr0"
                    app.counterGateTerminal = strcat(app.Dev,"PFI12"); 
                    case "ctr1"
                    app.counterGateTerminal = strcat(app.Dev,"PFI13");
                    case "ctr2"
                    app.counterGateTerminal = strcat(app.Dev,"PFI14");
                    case "ctr3"
                    app.counterGateTerminal = strcat(app.Dev,"PFI15");

                end
                citask = NationalInstruments.DAQmx.Task;        % task for width measurement of the square pulses generated by COtask
                for i=1:app.NumberOfEnabledChannels
                    
                    if app.channelsData(i,2) == true
                        CIch = citask.CIChannels.CreatePulseWidthChannel(strcat(app.Dev,app.counterChannelsInputFields(i).Value), '',0,2^32-1,NationalInstruments.DAQmx.CIPulseWidthStartingEdge.Rising,NationalInstruments.DAQmx.CIPulseWidthUnits.Ticks);
                        % CIch = CItask.CIChannels.CreateCountEdgesChannel ('/Dev2/ctr2', 'CItask',CICountEdgesActiveEdge.Rising,int64(0),CICountEdgesCountDirection.Up);
                        CIch.PulseWidthTerminal = app.counterGateTerminal;        % a terminal, where square pulses are produced by COtask
                        switch app.counterChannelsInputFields(i).Value
                            case "ctr0"
                                CIch.CounterTimebaseSource = strcat(app.Dev,"PFI8");      % a terminal, where a detector is connected
                            case "ctr1"
                                CIch.CounterTimebaseSource = strcat(app.Dev,"PFI3");
                            case "ctr2"
                                CIch.CounterTimebaseSource = strcat(app.Dev,"PFI0");
                            case "ctr3"
                                CIch.CounterTimebaseSource = strcat(app.Dev,"PFI5");
                        end
                        
                    end
                end
                    citask.Timing.ConfigureImplicit(NationalInstruments.DAQmx.SampleQuantityMode.FiniteSamples,app.pixRep*app.numberOfPoints);   % clock
                    cireader = NationalInstruments.DAQmx.CounterReader(citask.Stream);       % start in the background: it doesn't start before COtask and AOtask
                
            end

            end
        end
        
        function results = readSettings(app)
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
                app.Dev = app.DeviceNameEditField.Value + "/";  
                app.pixRep = app.PixelRepetitionEditField_2.Value;                
                app.dwellTime = app.PixelDwellTimeusEditField.Value;
                app.pixFreq = 1 / (app.dwellTime / 1000000 * 2);
                app.numberOfPoints = (app.scanXRange / app.scanStep + 1)^2;
                app.dutyCycle = app.DutyCycleEditField.Value;
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
    

    % Callbacks that handle component events
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
            % try loading DAQmx driver
            fprintf('Starting up: loading DAQmx...\n')
            try
                NET.addAssembly('NationalInstruments.DAQmx');
                import NationalInstruments.DAQmx.*
                fprintf('Assembly successfully loaded!\n')
            catch
                error('Error loading .NET assembly! Check NIDAQmx .NET installation.')
            end
        end

        % Button pushed function: InitializeButton
        function InitializeButtonPushed(app, event)
            %             app.ax=[]
            printLogWindow(app,"Initialization..");
            try
                app.displayFigure = figure('Name',app.MatMicroMain.Name,'NumberTitle','off');
                setAxes(app,0.5)
                app.readSettings()
                app.coordPoints = GalvoCoordinatesForImage(app,app.scanXRange, app.scanYRange, app.scanStep,app.xFoVCenter,app.yFoVCenter,app.pixRepetition);
                
                if app.SimulationmodeCheckBox.Value==false
                    
                    % Load NIDAQmx .NET assembly
                    printLogWindow(app,'Starting up: loading DAQmx...\n')
                    try
                        NET.addAssembly('NationalInstruments.DAQmx');
                        import NationalInstruments.DAQmx.*
                        app.I =import;
                        printLogWindow(app,'Assembly successfully loaded!\n')
                    catch
                        printLogWindow(app,'Error loading .NET assembly! Check NIDAQmx .NET installation.')
                    end
                    [app.AOtask,app.AOwriter,~,~,~,~] = app.initChannels();

                    analogChannels = []; counterChannels = [];
                    for channel=1:app.NumberOfEnabledChannels
                        if app.channelsData(channel,2) == false
                            chImPMT= addAnalogInputChannel(app.imSession,app.DeviceNameEditField.Value,app.analogChannelsInputFields(channel).Value,'Voltage');
                            chImPMT.TerminalConfig = app.analogChannelConnectionType(channel).Value; % type of voltage measurement - single ended. CRUTIAL
                            analogChannels = [analogChannels,app.DeviceNameEditField.Value + app.analogChannelsInputFields(channel).Value];
                            printLogWindow(app,"Analog channel" + string(channel-1) + " is used")
                        else
                            addCounterInputChannel (app.imSession,app.DeviceNameEditField.Value,app.counterChannelsInputFields(channel).Value,'EdgeCount');
                            counterChannels = [counterChannels,app.DeviceNameEditField.Value + app.counterChannelsInputFields(channel).Value];
                            printLogWindow(app,"Counter channel" + string(channel-1) + " is used")
                        end
                        app.digitalSwitches(channel).Enable = false;
                        app.analogChannelsInputFields(channel).Enable = false;
                        app.counterChannelsInputFields(channel).Enable = false;
                        app.analogChannelConnectionType(channel).Enable = false;
                        
                        
                        
                    end
%                     app.imSession.NotifyWhenScansQueuedBelow = round(length(app.coordPoints)*0.5 * app.pixRepetition);
%                         app.lhOUT = addlistener(app.imSession,'DataRequired', @app.queueData);
%                         app.imSession.IsContinuous = true; %needed to provide continuous behavior
%                         app.imSession.queueOutputData([ app.coordPoints(:,1) app.coordPoints(:,2)]); %queue the first frame
                        
                        % Pull in the data when the frame has been acquired
%                         app.imSession.NotifyWhenDataAvailableExceeds=length(app.coordPoints(:,1)) * app.pixRepetition;
%                         app.lhIN = addlistener(app.imSession,'DataAvailable', @app.grabData);
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
            try
            saveTIFF = true; saveHDF5 = false;      % define in what formats the data will be saved
            if app.imSession.IsRunning
                app.imSession.stop();
            end
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
            printLogWindow(app,'NL image - Done')
            catch ME
                printLogWindow(app,"Could not acquire an image. Try once again or restart the software")
                printLogWindow(app, ME.message)
            end
            try
            if saveTIFF == true
                saveDataTiff(app,app.FilenameCommentEditField.Value,signal)
                
            elseif saveHDF5==true
                
            end
            catch ME
                printLogWindow(app,"Could not save the image.")
                printLogWindow(app, ME.message)
            end
            
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
            try
            value = app.LiveButton.Value;            
            if value==true
                %                 app.imSession.queueOutputData([ app.coordPoints(:,1) app.coordPoints(:,1)]); %queue the first frame
                app.firstDraw=true;
                while value == true
                    value = app.LiveButton.Value;
                    if app.imSession.IsRunning
                        app.imSession.stop();
                    end
                    signal = NLimagingCoords(app ,app.coordPoints, app.numberOfAccums,app.pixRepetition);
                    drawImages(app,app.firstDraw,signal);
                    app.firstDraw = false;
                    
                end
                
            else
%                 app.imSession.stop();
%                 app.imSession.release();
            end                     
            catch ME
                printLogWindow(app,"Error while live imaging. Try once again or restart the software")
                printLogWindow(app, ME.message)
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
                    if ishandle(app.displayFigure)
                        close(app.displayFigure)
                    end
                    if ~isempty(app.imSession)
                        if app.imSession.IsRunning
                            app.imSession.stop();
                        end
                    end
                    if ~isempty(app.Controller)
                        if ~isempty(app.stage)
                            app.stage.CloseConnection();
                        end
                        app.Controller.Destroy;
                        clear app.stage;
                        clear app.Controller
                    end
                    if ~isempty(app.ControllerPIFOC)
                        if ~isempty(app.stagePIFOC)
                            app.stagePIFOC.CloseConnection();
                        end
                        app.ControllerPIFOC.Destroy;
                        clear ControllerPIFOC;
                        clear stagePIFOC;
                    end

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
%             app.imSession.NotifyWhenScansQueuedBelow = round(length(app.coordPoints)*0.5);            
%             app.imSession.NotifyWhenDataAvailableExceeds=length(app.coordPoints(:,1));
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
%             setAxes(app,350)
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
                    app.signalData = NLimagingCoords(app,app.coordPoints, app.numberOfAccums, app.pixRepetition);
                    
                    for channel =1 :app.NumberOfEnabledChannels
                        dataPolCUBE(:, :, localIterator,channel) =  app.signalData(:,:,channel);                        
                    end
                    drawImages(app,firstDraw,app.signalData);
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
                [xcoord ,ycoord] = selectGalvoPosition(app,str2num(app.ChannelForImagePixelSelectionDropDown.Value)+1);
                optimizationPoint = [-double(int16(app.scanXRange / app.scanStep)/2)*app.scanStep*app.calibration+double(xcoord)*app.scanStep*app.calibration;-double(int16(app.scanYRange / app.scanStep)/2)*app.scanStep*app.calibration+double(ycoord)*app.scanStep*app.calibration];
                if app.SimulationmodeCheckBox.Value==false
                    app.imSession.outputSingleScan([optimizationPoint(1) optimizationPoint(2)])                    
                end
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
            signal = NLimagingCoords(app ,app.coordPoints, app.numberOfAccums,app.pixRepetition);
            drawImages(app,true,signal)
        end

        % Button pushed function: ZoomOutButton
        function ZoomOutButtonPushed(app, event)
            [xcoord, ycoord] = selectGalvoPosition(app,str2num(app.ChannelDropDown.Value)+1);
            app.FoVcenterXumEditField.Value = -double(int16(app.scanXRange / app.scanStep)/2)*app.scanStep+double(xcoord)*app.scanStep;
            app.FoVcenterYumEditField.Value = -double(int16(app.scanYRange / app.scanStep)/2)*app.scanStep+double(ycoord)*app.scanStep;
            zoomFactor =1 / app.ZoomfactorEditField.Value;
            zoomImage(app,zoomFactor);
            app.coordPoints = GalvoCoordinatesForImage(app,app.scanXRange,app.scanYRange,app.scanStep,app.xFoVCenter,app.yFoVCenter,app.pixRepetition);
            signal = NLimagingCoords(app ,app.coordPoints, app.numberOfAccums,app.pixRepetition);
            drawImages(app,true,signal)
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

        % Button pushed function: ConnectDelayLineButton
        function ConnectDelayLineButtonPushed(app, event)
            %% CONNECT PI translation stage
            %Load PI MATLAB Driver GCS2 (if not already loaded)
            try
                addpath ( 'C:\Users\Public\PI\PI_MATLAB_Driver_GCS2' ); % If you are still using XP, please look at the manual for the right path to include.
                if ( ~exist ( 'app.Controller', 'var' ) || ~isa ( app.Controller, 'PI_GCS_Controller' ) )
                    app.Controller = PI_GCS_Controller ();
                end
                stageConnected = false;
                if ( isempty (app.stage) ) | ( app.stage.IsConnected )
                    [app.stage, app.PIaxis, stageConnected] = StartStage(app, app.Controller,app.ConnectioninterfaceDropDown.Value,app.StagetypeEditField.Value,app.ControllerserialnumberEditField.Value);
                end
                
                %Set stage movement velocity
                vel=2; %in mm/s
                app.stage.VEL(app.PIaxis, vel);
                
                %Reference PI Stage
                ReferenceStage(app,app.stage, app.PIaxis)
                % RefPIStage(stage, PIaxis);                
                app.stage.MOV(app.PIaxis,45.4);
                app.ConnectDelayLineButton.Enable = false;
            catch ME
                printLogWindow(app,"The stage is not initialized.")
                printLogWindow(app, ME.message)
            end
            

        end

        % Button pushed function: MoveButton
        function MoveButtonPushed(app, event)
            app.stage.MOV(app.PIaxis,app.PositionEditField.Value);
            printLogWindow(app, "Stage moved to "+app.PositionEditField.Value);
        end

        % Button pushed function: ScandelayButton
        function ScandelayButtonPushed(app, event)
            %% Pulse overlap for CARS signal
            printLogWindow(app, "Scanning the delay");    
            Offset =45.434999999999600;%mm 20x 0.7 LWD SLM, 1:3 Telescope Oil reference
            % Offset = 45.432499999998580; %mm 20x 0.7 LWD SLM, 1:3 Telescope, SpCOil
            % Offset =45.602499999992550;%mm 20x 0.7 LWD NO 1:3 telescope no SLM
            % Offset = 45.692499999999140; % Leaf fresh low
            Range = app.RangemmEditField.Value; %mm
            optimizationPoint = [0 0];
            if exist('app.imSession', 'var')
            app.imSession.outputSingleScan([optimizationPoint(1) optimizationPoint(2)]);
            end
            Step =app.StepmmEditField.Value;%mm
            position = Offset-Range/2;
            data = zeros(2, int32(Range/Step));
            counter =1;
            
            sessionPulseOver = daq.createSession('ni');
            sessionPulseOver.Rate = 1250000; sessionPulseOver.DurationInSeconds = 0.1;
            chNo=0; %channel number for analog inpupt - PMT
            chPMT=addAnalogInputChannel(sessionPulseOver,'Dev1',app.ChannelEditField.Value,'Voltage');
            chPMT.TerminalConfig = 'SingleEnded'; % type of voltage measurement. CRUTIAL                  
            while (position)<=(Offset+Range/2)
                app.stage.MOV(app.PIaxis,position);
                while(app.stage.IsMoving==true)
                    pause(0.1);
                end
                
                data(1,counter) = position;
                data(2, counter) = mean(sessionPulseOver.startForeground);
                
%                 figure(fPulseOverlay); plot(data(1,:), data(2,:));axis([Offset-Range/2 Offset+Range/2 min(data(2, :))-0.05 max(data(2, :))+0.05]);title('Delay scan'); drawnow;
                position = position + Step; counter = counter + 1;
                
            end
            app.UIAxes2.XTick = [Offset-Range/2:Range /9: Offset+Range/2];
            app.UIAxes2.XTickLabelRotation = 90;
            plot(app.UIAxes2, data(1,:), data(2,:))
            app.stage.MOV(app.PIaxis,Offset);
%             styleDelay = '%f\t%f\n';
            sessionPulseOver.release;
            clear('sessionPulseOver');
            printLogWindow(app, "..done!");
%             saveas(fPulseOverlay,"output\"+logfolder+"\delay scan"+string(datetime('now','TimeZone','local','Format','HH-mm'))+".fig");
%             fileName = "output\"+logfolder+"\delay scan"+string(datetime('now','TimeZone','local','Format','HH-mm'));
%             saveText(fileName, styleDelay, data'); %save total signal evolution during the optimization
%             disp('done')
        end

        % Button pushed function: Button2
        function Button2Pushed(app, event)
           
                        
                            
                        
                        
                        

        end

        % Callback function
        function InitializePIFOCButtonPushed(app, event)
            
        end

        % Button pushed function: ConnectPIFOCButton
        function ConnectPIFOCButtonPushed(app, event)
            try 
                printLogWindow(app, 'Connecting to the PIFOC');
                addpath ( 'C:\Users\Public\PI\PI_MATLAB_Driver_GCS2' ); % If you are still using XP, please look at the manual for the right path to include.
                PIFOC_SN =(app.PIFOCControllerSerialNumberDropDown.Value);
                if str2double(PIFOC_SN) == 120004758
                    if ( ~exist ( 'app.ControllerPIFOC', 'var' ) || ~isa ( app.ControllerPIFOC, 'PI_GCS_Controller' ) )
                        
                        app.ControllerPIFOC = PI_GCS_Controller ();
                    end
                elseif str2double(PIFOC_SN )== 12220
                    if ( ~exist ( 'ControllerPIFOC', 'var' ) || ~isa ( ControllerPIFOC, 'E816_GCS_Controller' ) )
                        app.ControllerPIFOC = E816_GCS_Controller ();
                    end
                end
                
        
        stagePIFOCConnected = false;
        if ( isempty (app.stagePIFOC) ) | ( app.stagePIFOC.IsConnected )
            [app.stagePIFOC, app.PIFOCaxis, stagePIFOCConnected] = ConnectPIFOC(app,app.ControllerPIFOC,app.PIFOCConnectionInterfaceDropDown.Value,app.PIFOCStageTypeEditField.Value,PIFOC_SN );
        end
        try
            app.stagePIFOC.MOV(app.PIFOCaxis,0);
        catch ME
            printLogWindow(app, ME.message);
        end
        printLogWindow(app, 'Sucessfully connected to PIFOC');
        catch ME
                    printLogWindow(app,'Could not connect to the PIFOC');
                printLogWindow(app, ME.message);
            end
        end

        % Button pushed function: MoveZButton
        function MoveZButtonPushed(app, event)
            try 
                app.stagePIFOC.MOV(app.PIFOCaxis,app.SetZPositionEditField.Value); 
            catch ME
                printLogWindow(app, ME.message);
            end
        end

        % Button pushed function: AcquireZstackButton
        function AcquireZstackButtonPushed(app, event)
            try
               
                 acquireZStack(app)
            catch ME
                printLogWindow(app, 'Could not take a Z stack..');
                 printLogWindow(app, ME.message);
            end
        end

        % Value changed function: CounterBaseSwitch
        function CounterBaseSwitchValueChanged(app, event)
%             value = app.CounterBaseSwitch.Value;
            app.CounterTerminalForSquarePulseGenerationEditField.Enable =  ~app.CounterTerminalForSquarePulseGenerationEditField.Enable;
            app.CounterTerminalForSquarePulseGenerationEditField.Enable =  ~app.CounterTerminalForSquarePulseGenerationEditField.Enable;
            app.CounterGenerationChannelEditField.Enable = ~ app.CounterGenerationChannelEditField.Enable;
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create MatMicroMain and hide until all components are created
            app.MatMicroMain = uifigure('Visible', 'off');
            app.MatMicroMain.IntegerHandle = 'on';
            app.MatMicroMain.AutoResizeChildren = 'off';
            app.MatMicroMain.Position = [100 -100 1060 640];
            app.MatMicroMain.Name = 'microMOSAIC v0.805';
            app.MatMicroMain.Resize = 'off';
            app.MatMicroMain.CloseRequestFcn = createCallbackFcn(app, @MatMicroMainCloseRequest, true);

            % Create TabGroup
            app.TabGroup = uitabgroup(app.MatMicroMain);
            app.TabGroup.AutoResizeChildren = 'off';
            app.TabGroup.Position = [1 125 1060 501];

            % Create MainTab
            app.MainTab = uitab(app.TabGroup);
            app.MainTab.AutoResizeChildren = 'off';
            app.MainTab.Title = 'Main';

            % Create InitializeButton
            app.InitializeButton = uibutton(app.MainTab, 'push');
            app.InitializeButton.ButtonPushedFcn = createCallbackFcn(app, @InitializeButtonPushed, true);
            app.InitializeButton.Position = [278 412 185 47];
            app.InitializeButton.Text = 'Initialize';

            % Create ReadyLampLabel
            app.ReadyLampLabel = uilabel(app.MainTab);
            app.ReadyLampLabel.HorizontalAlignment = 'right';
            app.ReadyLampLabel.Position = [363 384 40 22];
            app.ReadyLampLabel.Text = 'Ready';

            % Create ReadyLamp
            app.ReadyLamp = uilamp(app.MainTab);
            app.ReadyLamp.Position = [418 384 20 20];
            app.ReadyLamp.Color = [1 0 0];

            % Create ScanSaveButton
            app.ScanSaveButton = uibutton(app.MainTab, 'push');
            app.ScanSaveButton.ButtonPushedFcn = createCallbackFcn(app, @ScanSaveButtonPushed, true);
            app.ScanSaveButton.Enable = 'off';
            app.ScanSaveButton.Position = [123 184 110 36];
            app.ScanSaveButton.Text = 'Scan&Save';

            % Create ScanRangeXumEditFieldLabel
            app.ScanRangeXumEditFieldLabel = uilabel(app.MainTab);
            app.ScanRangeXumEditFieldLabel.HorizontalAlignment = 'right';
            app.ScanRangeXumEditFieldLabel.Position = [22 436 102 22];
            app.ScanRangeXumEditFieldLabel.Text = 'Scan Range X, um';

            % Create ScanRangeXumEditField
            app.ScanRangeXumEditField = uieditfield(app.MainTab, 'numeric');
            app.ScanRangeXumEditField.Limits = [0 600];
            app.ScanRangeXumEditField.ValueChangedFcn = createCallbackFcn(app, @ScanRangeXumEditFieldValueChanged, true);
            app.ScanRangeXumEditField.Position = [132 436 91 22];
            app.ScanRangeXumEditField.Value = 100;

            % Create ScanRangeYumLabel
            app.ScanRangeYumLabel = uilabel(app.MainTab);
            app.ScanRangeYumLabel.HorizontalAlignment = 'right';
            app.ScanRangeYumLabel.Position = [9 399 115 28];
            app.ScanRangeYumLabel.Text = 'Scan Range Y, um';

            % Create ScanRangeYumEditField
            app.ScanRangeYumEditField = uieditfield(app.MainTab, 'numeric');
            app.ScanRangeYumEditField.ValueChangedFcn = createCallbackFcn(app, @ScanRangeXumEditFieldValueChanged, true);
            app.ScanRangeYumEditField.Position = [132 405 90 22];
            app.ScanRangeYumEditField.Value = 100;

            % Create ScanResolutionumLabel
            app.ScanResolutionumLabel = uilabel(app.MainTab);
            app.ScanResolutionumLabel.HorizontalAlignment = 'right';
            app.ScanResolutionumLabel.Position = [21 364 113 28];
            app.ScanResolutionumLabel.Text = 'Scan Resolution,um';

            % Create ScanResolutionumEditField
            app.ScanResolutionumEditField = uieditfield(app.MainTab, 'numeric');
            app.ScanResolutionumEditField.ValueChangedFcn = createCallbackFcn(app, @ScanRangeXumEditFieldValueChanged, true);
            app.ScanResolutionumEditField.Position = [142 370 80 22];
            app.ScanResolutionumEditField.Value = 0.5;

            % Create NumberOfAccumulationsEditFieldLabel
            app.NumberOfAccumulationsEditFieldLabel = uilabel(app.MainTab);
            app.NumberOfAccumulationsEditFieldLabel.HorizontalAlignment = 'right';
            app.NumberOfAccumulationsEditFieldLabel.Position = [21 338 149 22];
            app.NumberOfAccumulationsEditFieldLabel.Text = 'Number Of Accumulations';

            % Create NumberOfAccumulationsEditField
            app.NumberOfAccumulationsEditField = uieditfield(app.MainTab, 'numeric');
            app.NumberOfAccumulationsEditField.Position = [176 338 46 22];
            app.NumberOfAccumulationsEditField.Value = 1;

            % Create TestbuttondontpressButton
            app.TestbuttondontpressButton = uibutton(app.MainTab, 'push');
            app.TestbuttondontpressButton.ButtonPushedFcn = createCallbackFcn(app, @TestbuttondontpressButtonPushed, true);
            app.TestbuttondontpressButton.Position = [478 402 139 23];
            app.TestbuttondontpressButton.Text = 'Test button, don''t press';

            % Create LiveButton
            app.LiveButton = uibutton(app.MainTab, 'state');
            app.LiveButton.ValueChangedFcn = createCallbackFcn(app, @LiveButtonValueChanged, true);
            app.LiveButton.Enable = 'off';
            app.LiveButton.Text = 'Live';
            app.LiveButton.Position = [11 184 110 36];

            % Create SimulationmodeCheckBox
            app.SimulationmodeCheckBox = uicheckbox(app.MainTab);
            app.SimulationmodeCheckBox.Text = 'Simulation mode';
            app.SimulationmodeCheckBox.Position = [478 436 111 22];

            % Create PolarPanel
            app.PolarPanel = uipanel(app.MainTab);
            app.PolarPanel.AutoResizeChildren = 'off';
            app.PolarPanel.Title = 'Polar';
            app.PolarPanel.Position = [253 110 260 257];

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

            % Create TakePolarStackButton
            app.TakePolarStackButton = uibutton(app.PolarPanel, 'push');
            app.TakePolarStackButton.ButtonPushedFcn = createCallbackFcn(app, @TakePolarStackButtonPushed, true);
            app.TakePolarStackButton.Enable = 'off';
            app.TakePolarStackButton.Position = [176.5 164 77 62];
            app.TakePolarStackButton.Text = {'Take '; 'Polar Stack'};

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

            % Create FoVcenterXumEditFieldLabel
            app.FoVcenterXumEditFieldLabel = uilabel(app.MainTab);
            app.FoVcenterXumEditFieldLabel.HorizontalAlignment = 'right';
            app.FoVcenterXumEditFieldLabel.Position = [21 308 99 22];
            app.FoVcenterXumEditFieldLabel.Text = 'FoV center X, um';

            % Create FoVcenterXumEditField
            app.FoVcenterXumEditField = uieditfield(app.MainTab, 'numeric');
            app.FoVcenterXumEditField.ValueChangedFcn = createCallbackFcn(app, @ScanRangeXumEditFieldValueChanged, true);
            app.FoVcenterXumEditField.Position = [137 308 85 22];

            % Create FoVcenterYumEditFieldLabel
            app.FoVcenterYumEditFieldLabel = uilabel(app.MainTab);
            app.FoVcenterYumEditFieldLabel.HorizontalAlignment = 'right';
            app.FoVcenterYumEditFieldLabel.Position = [21 282 97 22];
            app.FoVcenterYumEditFieldLabel.Text = 'FoV center Y, um';

            % Create FoVcenterYumEditField
            app.FoVcenterYumEditField = uieditfield(app.MainTab, 'numeric');
            app.FoVcenterYumEditField.ValueChangedFcn = createCallbackFcn(app, @ScanRangeXumEditFieldValueChanged, true);
            app.FoVcenterYumEditField.Position = [135 282 87 22];

            % Create ZoomPanel
            app.ZoomPanel = uipanel(app.MainTab);
            app.ZoomPanel.AutoResizeChildren = 'off';
            app.ZoomPanel.Title = 'Zoom';
            app.ZoomPanel.Position = [661 329 168 128];

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
            app.PixelRepetitionEditFieldLabel.Position = [18 252 89 22];
            app.PixelRepetitionEditFieldLabel.Text = 'Pixel Repetition';

            % Create PixelRepetitionEditField
            app.PixelRepetitionEditField = uieditfield(app.MainTab, 'numeric');
            app.PixelRepetitionEditField.ValueChangedFcn = createCallbackFcn(app, @ScanRangeXumEditFieldValueChanged, true);
            app.PixelRepetitionEditField.Position = [122 252 100 22];
            app.PixelRepetitionEditField.Value = 1;

            % Create ZstackPanel
            app.ZstackPanel = uipanel(app.MainTab);
            app.ZstackPanel.AutoResizeChildren = 'off';
            app.ZstackPanel.Title = 'Z stack';
            app.ZstackPanel.Position = [603 75 260 221];

            % Create StartingZumEditFieldLabel
            app.StartingZumEditFieldLabel = uilabel(app.ZstackPanel);
            app.StartingZumEditFieldLabel.HorizontalAlignment = 'right';
            app.StartingZumEditFieldLabel.Position = [0 164 81 22];
            app.StartingZumEditFieldLabel.Text = 'Starting Z, um';

            % Create StartingZumEditField
            app.StartingZumEditField = uieditfield(app.ZstackPanel, 'numeric');
            app.StartingZumEditField.Position = [96 164 100 22];
            app.StartingZumEditField.Value = 50;

            % Create EndingZumEditFieldLabel
            app.EndingZumEditFieldLabel = uilabel(app.ZstackPanel);
            app.EndingZumEditFieldLabel.HorizontalAlignment = 'right';
            app.EndingZumEditFieldLabel.Position = [-2 123 77 22];
            app.EndingZumEditFieldLabel.Text = 'Ending Z, um';

            % Create EndingZumEditField
            app.EndingZumEditField = uieditfield(app.ZstackPanel, 'numeric');
            app.EndingZumEditField.Position = [90 123 100 22];
            app.EndingZumEditField.Value = 60;

            % Create ZStepEditFieldLabel
            app.ZStepEditFieldLabel = uilabel(app.ZstackPanel);
            app.ZStepEditFieldLabel.HorizontalAlignment = 'right';
            app.ZStepEditFieldLabel.Position = [34 79 41 22];
            app.ZStepEditFieldLabel.Text = 'Z Step';

            % Create ZStepEditField
            app.ZStepEditField = uieditfield(app.ZstackPanel, 'numeric');
            app.ZStepEditField.Position = [90 79 100 22];
            app.ZStepEditField.Value = 1;

            % Create ZGaugeLabel
            app.ZGaugeLabel = uilabel(app.ZstackPanel);
            app.ZGaugeLabel.HorizontalAlignment = 'center';
            app.ZGaugeLabel.Position = [73 1 25 22];
            app.ZGaugeLabel.Text = 'Z';

            % Create ZGauge
            app.ZGauge = uigauge(app.ZstackPanel, 'linear');
            app.ZGauge.Position = [24 38 119 40];

            % Create AcquireZstackButton
            app.AcquireZstackButton = uibutton(app.ZstackPanel, 'push');
            app.AcquireZstackButton.ButtonPushedFcn = createCallbackFcn(app, @AcquireZstackButtonPushed, true);
            app.AcquireZstackButton.Position = [150 22 100 49];
            app.AcquireZstackButton.Text = 'Acquire Z stack';

            % Create LiveTab
            app.LiveTab = uitab(app.TabGroup);
            app.LiveTab.Title = 'Live';

            % Create UIAxes
            app.UIAxes = uiaxes(app.LiveTab);
            xlabel(app.UIAxes, 'Channel')
            ylabel(app.UIAxes, 'Signal')
            app.UIAxes.XTick = [0 1 2 3];
            app.UIAxes.XTickLabel = {'0'; '1'; '2'; '3'};
            app.UIAxes.Position = [20 101 288 354];

            % Create FasterSliderLabel
            app.FasterSliderLabel = uilabel(app.LiveTab);
            app.FasterSliderLabel.HorizontalAlignment = 'right';
            app.FasterSliderLabel.Position = [448 368 40 22];
            app.FasterSliderLabel.Text = 'Faster';

            % Create FasterSlider
            app.FasterSlider = uislider(app.LiveTab);
            app.FasterSlider.Limits = [0 500];
            app.FasterSlider.MajorTicks = [];
            app.FasterSlider.MinorTicks = [];
            app.FasterSlider.Position = [509 377 150 3];

            % Create StartLiveButton
            app.StartLiveButton = uibutton(app.LiveTab, 'state');
            app.StartLiveButton.ValueChangedFcn = createCallbackFcn(app, @StartLiveButtonValueChanged, true);
            app.StartLiveButton.Enable = 'off';
            app.StartLiveButton.Text = 'Start Live';
            app.StartLiveButton.Position = [347 186 138 113];

            % Create SlowerLabel
            app.SlowerLabel = uilabel(app.LiveTab);
            app.SlowerLabel.Position = [674 368 42 22];
            app.SlowerLabel.Text = 'Slower';

            % Create RefreshrateLabel
            app.RefreshrateLabel = uilabel(app.LiveTab);
            app.RefreshrateLabel.Position = [553 397 72 22];
            app.RefreshrateLabel.Text = 'Refresh rate';

            % Create ChannelForImagePixelSelectionDropDownLabel
            app.ChannelForImagePixelSelectionDropDownLabel = uilabel(app.LiveTab);
            app.ChannelForImagePixelSelectionDropDownLabel.HorizontalAlignment = 'right';
            app.ChannelForImagePixelSelectionDropDownLabel.Position = [339 308 191 22];
            app.ChannelForImagePixelSelectionDropDownLabel.Text = 'Channel For Image Pixel Selection';

            % Create ChannelForImagePixelSelectionDropDown
            app.ChannelForImagePixelSelectionDropDown = uidropdown(app.LiveTab);
            app.ChannelForImagePixelSelectionDropDown.Items = {'0', '1', '2', '3'};
            app.ChannelForImagePixelSelectionDropDown.ItemsData = {'0', '1', '2', '3'};
            app.ChannelForImagePixelSelectionDropDown.Position = [545 308 100 22];
            app.ChannelForImagePixelSelectionDropDown.Value = '0';

            % Create AutoscaleCheckBox_5
            app.AutoscaleCheckBox_5 = uicheckbox(app.LiveTab);
            app.AutoscaleCheckBox_5.ValueChangedFcn = createCallbackFcn(app, @AutoscaleCheckBox_5ValueChanged, true);
            app.AutoscaleCheckBox_5.Text = 'Autoscale';
            app.AutoscaleCheckBox_5.Position = [347 397 75 22];
            app.AutoscaleCheckBox_5.Value = true;

            % Create MaxEditFieldLabel
            app.MaxEditFieldLabel = uilabel(app.LiveTab);
            app.MaxEditFieldLabel.HorizontalAlignment = 'right';
            app.MaxEditFieldLabel.Enable = 'off';
            app.MaxEditFieldLabel.Position = [339 370 28 22];
            app.MaxEditFieldLabel.Text = 'Max';

            % Create MaxEditField
            app.MaxEditField = uieditfield(app.LiveTab, 'numeric');
            app.MaxEditField.Enable = 'off';
            app.MaxEditField.Position = [379 370 51 22];
            app.MaxEditField.Value = 3000;

            % Create MinEditFieldLabel
            app.MinEditFieldLabel = uilabel(app.LiveTab);
            app.MinEditFieldLabel.HorizontalAlignment = 'right';
            app.MinEditFieldLabel.Enable = 'off';
            app.MinEditFieldLabel.Position = [339 349 25 22];
            app.MinEditFieldLabel.Text = 'Min';

            % Create MinEditField
            app.MinEditField = uieditfield(app.LiveTab, 'numeric');
            app.MinEditField.Enable = 'off';
            app.MinEditField.Position = [379 349 51 22];

            % Create Button
            app.Button = uibutton(app.LiveTab, 'state');
            app.Button.ValueChangedFcn = createCallbackFcn(app, @ButtonValueChanged, true);
            app.Button.Text = 'Button';
            app.Button.Position = [641 243 100 22];

            % Create SettingsTab
            app.SettingsTab = uitab(app.TabGroup);
            app.SettingsTab.AutoResizeChildren = 'off';
            app.SettingsTab.Title = 'Acquisition Settings';

            % Create ObjectiveDropDownLabel
            app.ObjectiveDropDownLabel = uilabel(app.SettingsTab);
            app.ObjectiveDropDownLabel.HorizontalAlignment = 'right';
            app.ObjectiveDropDownLabel.Position = [14 437 56 22];
            app.ObjectiveDropDownLabel.Text = 'Objective';

            % Create ObjectiveDropDown
            app.ObjectiveDropDown = uidropdown(app.SettingsTab);
            app.ObjectiveDropDown.Items = {'Nikon 20X NA0.75 (room134b)', 'Nikon 40X NA1.15 (room134b)', 'Nikon 20X NA0.7 (room134b)', 'Nikon 40X NA1.15 (room 22)'};
            app.ObjectiveDropDown.ItemsData = {'0.00484', '0.00968', '0.00462', '0.0220', ''};
            app.ObjectiveDropDown.Position = [85 437 197 22];
            app.ObjectiveDropDown.Value = '0.0220';

            % Create SessionUpdateRateHzEditFieldLabel
            app.SessionUpdateRateHzEditFieldLabel = uilabel(app.SettingsTab);
            app.SessionUpdateRateHzEditFieldLabel.HorizontalAlignment = 'right';
            app.SessionUpdateRateHzEditFieldLabel.Position = [423 437 140 22];
            app.SessionUpdateRateHzEditFieldLabel.Text = 'Session Update Rate, Hz';

            % Create SessionUpdateRateHzEditField
            app.SessionUpdateRateHzEditField = uieditfield(app.SettingsTab, 'numeric');
            app.SessionUpdateRateHzEditField.Limits = [1 1250000];
            app.SessionUpdateRateHzEditField.ValueDisplayFormat = '%.0f';
            app.SessionUpdateRateHzEditField.ValueChangedFcn = createCallbackFcn(app, @SessionUpdateRateHzEditFieldValueChanged, true);
            app.SessionUpdateRateHzEditField.Position = [578 437 100 22];
            app.SessionUpdateRateHzEditField.Value = 50000;

            % Create DeviceNameEditFieldLabel
            app.DeviceNameEditFieldLabel = uilabel(app.SettingsTab);
            app.DeviceNameEditFieldLabel.HorizontalAlignment = 'right';
            app.DeviceNameEditFieldLabel.Position = [680 437 78 22];
            app.DeviceNameEditFieldLabel.Text = 'Device Name';

            % Create DeviceNameEditField
            app.DeviceNameEditField = uieditfield(app.SettingsTab, 'text');
            app.DeviceNameEditField.Position = [773 437 100 22];
            app.DeviceNameEditField.Value = 'Dev2';

            % Create FirstChannelSettingsPanel
            app.FirstChannelSettingsPanel = uipanel(app.SettingsTab);
            app.FirstChannelSettingsPanel.AutoResizeChildren = 'off';
            app.FirstChannelSettingsPanel.Title = 'First Channel Settings';
            app.FirstChannelSettingsPanel.Position = [18 264 684 84];

            % Create Switch
            app.Switch = uiswitch(app.FirstChannelSettingsPanel, 'slider');
            app.Switch.Items = {'Analog', 'Counter'};
            app.Switch.ValueChangedFcn = createCallbackFcn(app, @SwitchValueChanged, true);
            app.Switch.Position = [324 40 45 20];
            app.Switch.Value = 'Counter';

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
            app.CounterChannelInputDropDownLabel.Position = [441 39 126 22];
            app.CounterChannelInputDropDownLabel.Text = 'Counter Channel Input';

            % Create CounterChannelInputDropDown
            app.CounterChannelInputDropDown = uidropdown(app.FirstChannelSettingsPanel);
            app.CounterChannelInputDropDown.Items = {'ctr0', 'ctr1', 'ctr2', 'ctr3'};
            app.CounterChannelInputDropDown.Position = [582 39 100 22];
            app.CounterChannelInputDropDown.Value = 'ctr0';

            % Create minauEditFieldLabel
            app.minauEditFieldLabel = uilabel(app.FirstChannelSettingsPanel);
            app.minauEditFieldLabel.HorizontalAlignment = 'right';
            app.minauEditFieldLabel.Position = [255 5 49 22];
            app.minauEditFieldLabel.Text = 'min, a.u';

            % Create minauEditField
            app.minauEditField = uieditfield(app.FirstChannelSettingsPanel, 'numeric');
            app.minauEditField.ValueChangedFcn = createCallbackFcn(app, @minauEditFieldValueChanged, true);
            app.minauEditField.Enable = 'off';
            app.minauEditField.Position = [311 5 31 22];

            % Create maxauEditFieldLabel
            app.maxauEditFieldLabel = uilabel(app.FirstChannelSettingsPanel);
            app.maxauEditFieldLabel.HorizontalAlignment = 'right';
            app.maxauEditFieldLabel.Position = [348 5 54 22];
            app.maxauEditFieldLabel.Text = 'max, a.u.';

            % Create maxauEditField
            app.maxauEditField = uieditfield(app.FirstChannelSettingsPanel, 'numeric');
            app.maxauEditField.ValueChangedFcn = createCallbackFcn(app, @maxauEditFieldValueChanged, true);
            app.maxauEditField.Enable = 'off';
            app.maxauEditField.Position = [407 5 31 22];
            app.maxauEditField.Value = 10;

            % Create AutoscaleCheckBox
            app.AutoscaleCheckBox = uicheckbox(app.FirstChannelSettingsPanel);
            app.AutoscaleCheckBox.ValueChangedFcn = createCallbackFcn(app, @AutoscaleCheckBoxValueChanged, true);
            app.AutoscaleCheckBox.Text = 'Autoscale';
            app.AutoscaleCheckBox.Position = [463 5 75 22];
            app.AutoscaleCheckBox.Value = true;

            % Create NumberOfChannelsSliderLabel
            app.NumberOfChannelsSliderLabel = uilabel(app.SettingsTab);
            app.NumberOfChannelsSliderLabel.HorizontalAlignment = 'right';
            app.NumberOfChannelsSliderLabel.Position = [36 389 118 22];
            app.NumberOfChannelsSliderLabel.Text = 'Number Of Channels';

            % Create NumberOfChannelsSlider
            app.NumberOfChannelsSlider = uislider(app.SettingsTab);
            app.NumberOfChannelsSlider.Limits = [1 4];
            app.NumberOfChannelsSlider.MajorTicks = [1 2 3 4];
            app.NumberOfChannelsSlider.ValueChangedFcn = createCallbackFcn(app, @NumberOfChannelsSliderValueChanged, true);
            app.NumberOfChannelsSlider.MinorTicks = [];
            app.NumberOfChannelsSlider.Position = [169 399 57 3];
            app.NumberOfChannelsSlider.Value = 2;

            % Create SecondChannelSettingsPanel
            app.SecondChannelSettingsPanel = uipanel(app.SettingsTab);
            app.SecondChannelSettingsPanel.AutoResizeChildren = 'off';
            app.SecondChannelSettingsPanel.Title = 'Second Channel Settings';
            app.SecondChannelSettingsPanel.Position = [18 181 684 84];

            % Create Switch_2
            app.Switch_2 = uiswitch(app.SecondChannelSettingsPanel, 'slider');
            app.Switch_2.Items = {'Analog', 'Counter'};
            app.Switch_2.ValueChangedFcn = createCallbackFcn(app, @Switch_2ValueChanged, true);
            app.Switch_2.Position = [326 40 45 20];
            app.Switch_2.Value = 'Counter';

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
            app.CounterChannelInputDropDown_2Label.Position = [443 39 126 22];
            app.CounterChannelInputDropDown_2Label.Text = 'Counter Channel Input';

            % Create CounterChannelInputDropDown_2
            app.CounterChannelInputDropDown_2 = uidropdown(app.SecondChannelSettingsPanel);
            app.CounterChannelInputDropDown_2.Items = {'ctr0', 'ctr1', 'ctr2', 'ctr3'};
            app.CounterChannelInputDropDown_2.Position = [584 39 100 22];
            app.CounterChannelInputDropDown_2.Value = 'ctr1';

            % Create maxauEditField_2Label
            app.maxauEditField_2Label = uilabel(app.SecondChannelSettingsPanel);
            app.maxauEditField_2Label.HorizontalAlignment = 'right';
            app.maxauEditField_2Label.Position = [349 5 54 22];
            app.maxauEditField_2Label.Text = 'max, a.u.';

            % Create maxauEditField_2
            app.maxauEditField_2 = uieditfield(app.SecondChannelSettingsPanel, 'numeric');
            app.maxauEditField_2.ValueChangedFcn = createCallbackFcn(app, @maxauEditField_2ValueChanged, true);
            app.maxauEditField_2.Enable = 'off';
            app.maxauEditField_2.Position = [408 5 31 22];
            app.maxauEditField_2.Value = 10;

            % Create minauEditField_2Label
            app.minauEditField_2Label = uilabel(app.SecondChannelSettingsPanel);
            app.minauEditField_2Label.HorizontalAlignment = 'right';
            app.minauEditField_2Label.Position = [256 5 49 22];
            app.minauEditField_2Label.Text = 'min, a.u';

            % Create minauEditField_2
            app.minauEditField_2 = uieditfield(app.SecondChannelSettingsPanel, 'numeric');
            app.minauEditField_2.ValueChangedFcn = createCallbackFcn(app, @minauEditField_2ValueChanged, true);
            app.minauEditField_2.Enable = 'off';
            app.minauEditField_2.Position = [312 5 31 22];

            % Create AutoscaleCheckBox_2
            app.AutoscaleCheckBox_2 = uicheckbox(app.SecondChannelSettingsPanel);
            app.AutoscaleCheckBox_2.ValueChangedFcn = createCallbackFcn(app, @AutoscaleCheckBox_2ValueChanged, true);
            app.AutoscaleCheckBox_2.Text = 'Autoscale';
            app.AutoscaleCheckBox_2.Position = [466 5 75 22];
            app.AutoscaleCheckBox_2.Value = true;

            % Create ThirdChannelSettingsPanel
            app.ThirdChannelSettingsPanel = uipanel(app.SettingsTab);
            app.ThirdChannelSettingsPanel.AutoResizeChildren = 'off';
            app.ThirdChannelSettingsPanel.Title = 'Third Channel Settings';
            app.ThirdChannelSettingsPanel.Position = [18 98 684 84];

            % Create Switch_3
            app.Switch_3 = uiswitch(app.ThirdChannelSettingsPanel, 'slider');
            app.Switch_3.Items = {'Analog', 'Counter'};
            app.Switch_3.ValueChangedFcn = createCallbackFcn(app, @Switch_3ValueChanged, true);
            app.Switch_3.Position = [326 40 45 20];
            app.Switch_3.Value = 'Counter';

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
            app.CounterChannelInputDropDown_3Label.Position = [443 39 126 22];
            app.CounterChannelInputDropDown_3Label.Text = 'Counter Channel Input';

            % Create CounterChannelInputDropDown_3
            app.CounterChannelInputDropDown_3 = uidropdown(app.ThirdChannelSettingsPanel);
            app.CounterChannelInputDropDown_3.Items = {'ctr0', 'ctr1', 'ctr2', 'ctr3'};
            app.CounterChannelInputDropDown_3.Position = [584 39 100 22];
            app.CounterChannelInputDropDown_3.Value = 'ctr2';

            % Create maxauEditField_3Label
            app.maxauEditField_3Label = uilabel(app.ThirdChannelSettingsPanel);
            app.maxauEditField_3Label.HorizontalAlignment = 'right';
            app.maxauEditField_3Label.Position = [349 5 54 22];
            app.maxauEditField_3Label.Text = 'max, a.u.';

            % Create maxauEditField_3
            app.maxauEditField_3 = uieditfield(app.ThirdChannelSettingsPanel, 'numeric');
            app.maxauEditField_3.ValueChangedFcn = createCallbackFcn(app, @maxauEditField_3ValueChanged, true);
            app.maxauEditField_3.Enable = 'off';
            app.maxauEditField_3.Position = [408 5 31 22];
            app.maxauEditField_3.Value = 10;

            % Create minauEditField_3Label
            app.minauEditField_3Label = uilabel(app.ThirdChannelSettingsPanel);
            app.minauEditField_3Label.HorizontalAlignment = 'right';
            app.minauEditField_3Label.Position = [256 5 49 22];
            app.minauEditField_3Label.Text = 'min, a.u';

            % Create minauEditField_3
            app.minauEditField_3 = uieditfield(app.ThirdChannelSettingsPanel, 'numeric');
            app.minauEditField_3.ValueChangedFcn = createCallbackFcn(app, @minauEditField_3ValueChanged, true);
            app.minauEditField_3.Enable = 'off';
            app.minauEditField_3.Position = [312 5 31 22];

            % Create AutoscaleCheckBox_3
            app.AutoscaleCheckBox_3 = uicheckbox(app.ThirdChannelSettingsPanel);
            app.AutoscaleCheckBox_3.ValueChangedFcn = createCallbackFcn(app, @AutoscaleCheckBox_3ValueChanged, true);
            app.AutoscaleCheckBox_3.Text = 'Autoscale';
            app.AutoscaleCheckBox_3.Position = [466 5 75 22];
            app.AutoscaleCheckBox_3.Value = true;

            % Create FourthChannelSettingsPanel
            app.FourthChannelSettingsPanel = uipanel(app.SettingsTab);
            app.FourthChannelSettingsPanel.AutoResizeChildren = 'off';
            app.FourthChannelSettingsPanel.Title = 'Fourth Channel Settings';
            app.FourthChannelSettingsPanel.Position = [18 16 684 84];

            % Create Switch_4
            app.Switch_4 = uiswitch(app.FourthChannelSettingsPanel, 'slider');
            app.Switch_4.Items = {'Analog', 'Counter'};
            app.Switch_4.ValueChangedFcn = createCallbackFcn(app, @Switch_4ValueChanged, true);
            app.Switch_4.Position = [326 40 45 20];
            app.Switch_4.Value = 'Counter';

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
            app.CounterChannelInputDropDown_4Label.Position = [443 39 126 22];
            app.CounterChannelInputDropDown_4Label.Text = 'Counter Channel Input';

            % Create CounterChannelInputDropDown_4
            app.CounterChannelInputDropDown_4 = uidropdown(app.FourthChannelSettingsPanel);
            app.CounterChannelInputDropDown_4.Items = {'ctr0', 'ctr1', 'ctr2', 'ctr3'};
            app.CounterChannelInputDropDown_4.Position = [584 39 100 22];
            app.CounterChannelInputDropDown_4.Value = 'ctr3';

            % Create maxauEditField_4Label
            app.maxauEditField_4Label = uilabel(app.FourthChannelSettingsPanel);
            app.maxauEditField_4Label.HorizontalAlignment = 'right';
            app.maxauEditField_4Label.Position = [349 5 54 22];
            app.maxauEditField_4Label.Text = 'max, a.u.';

            % Create maxauEditField_4
            app.maxauEditField_4 = uieditfield(app.FourthChannelSettingsPanel, 'numeric');
            app.maxauEditField_4.ValueChangedFcn = createCallbackFcn(app, @maxauEditField_4ValueChanged, true);
            app.maxauEditField_4.Enable = 'off';
            app.maxauEditField_4.Position = [408 5 31 22];
            app.maxauEditField_4.Value = 10;

            % Create minauEditField_4Label
            app.minauEditField_4Label = uilabel(app.FourthChannelSettingsPanel);
            app.minauEditField_4Label.HorizontalAlignment = 'right';
            app.minauEditField_4Label.Position = [256 5 49 22];
            app.minauEditField_4Label.Text = 'min, a.u';

            % Create minauEditField_4
            app.minauEditField_4 = uieditfield(app.FourthChannelSettingsPanel, 'numeric');
            app.minauEditField_4.ValueChangedFcn = createCallbackFcn(app, @minauEditField_4ValueChanged, true);
            app.minauEditField_4.Enable = 'off';
            app.minauEditField_4.Position = [312 5 31 22];

            % Create AutoscaleCheckBox_4
            app.AutoscaleCheckBox_4 = uicheckbox(app.FourthChannelSettingsPanel);
            app.AutoscaleCheckBox_4.ValueChangedFcn = createCallbackFcn(app, @AutoscaleCheckBox_4ValueChanged, true);
            app.AutoscaleCheckBox_4.Text = 'Autoscale';
            app.AutoscaleCheckBox_4.Position = [466 5 75 22];
            app.AutoscaleCheckBox_4.Value = true;

            % Create PolarMotorPortEditFieldLabel
            app.PolarMotorPortEditFieldLabel = uilabel(app.SettingsTab);
            app.PolarMotorPortEditFieldLabel.HorizontalAlignment = 'right';
            app.PolarMotorPortEditFieldLabel.Position = [884 437 93 22];
            app.PolarMotorPortEditFieldLabel.Text = 'Polar Motor Port';

            % Create PolarMotorPortEditField
            app.PolarMotorPortEditField = uieditfield(app.SettingsTab, 'text');
            app.PolarMotorPortEditField.Position = [992 437 50 22];
            app.PolarMotorPortEditField.Value = 'COM7';

            % Create TimeLagForPolarMotorsecEditFieldLabel
            app.TimeLagForPolarMotorsecEditFieldLabel = uilabel(app.SettingsTab);
            app.TimeLagForPolarMotorsecEditFieldLabel.HorizontalAlignment = 'right';
            app.TimeLagForPolarMotorsecEditFieldLabel.Position = [809 399 166 22];
            app.TimeLagForPolarMotorsecEditFieldLabel.Text = 'Time Lag For Polar Motor, sec';

            % Create TimeLagForPolarMotorsecEditField
            app.TimeLagForPolarMotorsecEditField = uieditfield(app.SettingsTab, 'numeric');
            app.TimeLagForPolarMotorsecEditField.ValueChangedFcn = createCallbackFcn(app, @TimeLagForPolarMotorsecEditFieldValueChanged, true);
            app.TimeLagForPolarMotorsecEditField.Position = [990 399 50 22];
            app.TimeLagForPolarMotorsecEditField.Value = 3;

            % Create CounterBaseSwitchLabel
            app.CounterBaseSwitchLabel = uilabel(app.SettingsTab);
            app.CounterBaseSwitchLabel.HorizontalAlignment = 'center';
            app.CounterBaseSwitchLabel.Position = [713 220 79 22];
            app.CounterBaseSwitchLabel.Text = 'Counter Base';

            % Create CounterBaseSwitch
            app.CounterBaseSwitch = uiswitch(app.SettingsTab, 'slider');
            app.CounterBaseSwitch.Items = {'Internal', 'External'};
            app.CounterBaseSwitch.Orientation = 'vertical';
            app.CounterBaseSwitch.ValueChangedFcn = createCallbackFcn(app, @CounterBaseSwitchValueChanged, true);
            app.CounterBaseSwitch.Position = [748 257 12 27];
            app.CounterBaseSwitch.Value = 'Internal';

            % Create CounterTerminalForSquarePulseGenerationLabel
            app.CounterTerminalForSquarePulseGenerationLabel = uilabel(app.SettingsTab);
            app.CounterTerminalForSquarePulseGenerationLabel.HorizontalAlignment = 'right';
            app.CounterTerminalForSquarePulseGenerationLabel.Enable = 'off';
            app.CounterTerminalForSquarePulseGenerationLabel.Position = [791 290 140 28];
            app.CounterTerminalForSquarePulseGenerationLabel.Text = {'Counter Terminal For '; 'Square Pulse Generation'};

            % Create CounterTerminalForSquarePulseGenerationEditField
            app.CounterTerminalForSquarePulseGenerationEditField = uieditfield(app.SettingsTab, 'text');
            app.CounterTerminalForSquarePulseGenerationEditField.Enable = 'off';
            app.CounterTerminalForSquarePulseGenerationEditField.Position = [950 296 100 22];
            app.CounterTerminalForSquarePulseGenerationEditField.Value = 'PFI15';

            % Create DutyCycleEditFieldLabel
            app.DutyCycleEditFieldLabel = uilabel(app.SettingsTab);
            app.DutyCycleEditFieldLabel.HorizontalAlignment = 'right';
            app.DutyCycleEditFieldLabel.Position = [723 326 64 22];
            app.DutyCycleEditFieldLabel.Text = 'Duty Cycle';

            % Create DutyCycleEditField
            app.DutyCycleEditField = uieditfield(app.SettingsTab, 'numeric');
            app.DutyCycleEditField.Position = [802 326 30 22];
            app.DutyCycleEditField.Value = 0.9;

            % Create CounterGenerationChannelEditFieldLabel
            app.CounterGenerationChannelEditFieldLabel = uilabel(app.SettingsTab);
            app.CounterGenerationChannelEditFieldLabel.HorizontalAlignment = 'right';
            app.CounterGenerationChannelEditFieldLabel.Position = [800 207 65 42];
            app.CounterGenerationChannelEditFieldLabel.Text = {'Counter '; 'Generation'; 'Channel'};

            % Create CounterGenerationChannelEditField
            app.CounterGenerationChannelEditField = uieditfield(app.SettingsTab, 'text');
            app.CounterGenerationChannelEditField.Position = [880 227 100 22];
            app.CounterGenerationChannelEditField.Value = 'ctr3';

            % Create PixelDwellTimeusEditFieldLabel
            app.PixelDwellTimeusEditFieldLabel = uilabel(app.SettingsTab);
            app.PixelDwellTimeusEditFieldLabel.HorizontalAlignment = 'right';
            app.PixelDwellTimeusEditFieldLabel.Position = [785 154 114 22];
            app.PixelDwellTimeusEditFieldLabel.Text = 'Pixel Dwell Time, us';

            % Create PixelDwellTimeusEditField
            app.PixelDwellTimeusEditField = uieditfield(app.SettingsTab, 'numeric');
            app.PixelDwellTimeusEditField.Limits = [0 Inf];
            app.PixelDwellTimeusEditField.Position = [903 154 35 22];
            app.PixelDwellTimeusEditField.Value = 20;

            % Create PixelRepetitionEditField_2Label
            app.PixelRepetitionEditField_2Label = uilabel(app.SettingsTab);
            app.PixelRepetitionEditField_2Label.HorizontalAlignment = 'right';
            app.PixelRepetitionEditField_2Label.Position = [831 116 89 22];
            app.PixelRepetitionEditField_2Label.Text = 'Pixel Repetition';

            % Create PixelRepetitionEditField_2
            app.PixelRepetitionEditField_2 = uieditfield(app.SettingsTab, 'numeric');
            app.PixelRepetitionEditField_2.Limits = [1 Inf];
            app.PixelRepetitionEditField_2.RoundFractionalValues = 'on';
            app.PixelRepetitionEditField_2.ValueDisplayFormat = '%.0f';
            app.PixelRepetitionEditField_2.Position = [935 116 34 22];
            app.PixelRepetitionEditField_2.Value = 2;

            % Create SavingSettingsTab
            app.SavingSettingsTab = uitab(app.TabGroup);
            app.SavingSettingsTab.AutoResizeChildren = 'off';
            app.SavingSettingsTab.Title = 'Saving Settings';

            % Create SavingfolderEditFieldLabel
            app.SavingfolderEditFieldLabel = uilabel(app.SavingSettingsTab);
            app.SavingfolderEditFieldLabel.HorizontalAlignment = 'right';
            app.SavingfolderEditFieldLabel.Position = [10 444 76 22];
            app.SavingfolderEditFieldLabel.Text = 'Saving folder';

            % Create SavingfolderEditField
            app.SavingfolderEditField = uieditfield(app.SavingSettingsTab, 'text');
            app.SavingfolderEditField.Position = [91 444 483 22];
            app.SavingfolderEditField.Value = '\\NIMBUS\mosaic-sb\Nora\';

            % Create FilenameCommentEditFieldLabel
            app.FilenameCommentEditFieldLabel = uilabel(app.SavingSettingsTab);
            app.FilenameCommentEditFieldLabel.HorizontalAlignment = 'right';
            app.FilenameCommentEditFieldLabel.Position = [10 410 110 22];
            app.FilenameCommentEditFieldLabel.Text = 'Filename Comment';

            % Create FilenameCommentEditField
            app.FilenameCommentEditField = uieditfield(app.SavingSettingsTab, 'text');
            app.FilenameCommentEditField.Position = [133 410 441 22];
            app.FilenameCommentEditField.Value = '_';

            % Create DelaylineTab
            app.DelaylineTab = uitab(app.TabGroup);
            app.DelaylineTab.Title = 'Delay line';

            % Create UIAxes2
            app.UIAxes2 = uiaxes(app.DelaylineTab);
            title(app.UIAxes2, 'Title')
            xlabel(app.UIAxes2, 'X')
            ylabel(app.UIAxes2, 'Y')
            app.UIAxes2.XTick = [0 0.1 0.2 0.4 0.6 0.8 1];
            app.UIAxes2.Position = [692 41 300 185];

            % Create DelayLineConnectionPanel
            app.DelayLineConnectionPanel = uipanel(app.DelaylineTab);
            app.DelayLineConnectionPanel.Title = 'Delay Line Connection';
            app.DelayLineConnectionPanel.Position = [118 225 260 221];

            % Create ConnectDelayLineButton
            app.ConnectDelayLineButton = uibutton(app.DelayLineConnectionPanel, 'push');
            app.ConnectDelayLineButton.ButtonPushedFcn = createCallbackFcn(app, @ConnectDelayLineButtonPushed, true);
            app.ConnectDelayLineButton.Position = [56 23 120 22];
            app.ConnectDelayLineButton.Text = 'Connect Delay Line';

            % Create StagetypeEditFieldLabel
            app.StagetypeEditFieldLabel = uilabel(app.DelayLineConnectionPanel);
            app.StagetypeEditFieldLabel.HorizontalAlignment = 'right';
            app.StagetypeEditFieldLabel.Position = [77 162 63 22];
            app.StagetypeEditFieldLabel.Text = 'Stage type';

            % Create StagetypeEditField
            app.StagetypeEditField = uieditfield(app.DelayLineConnectionPanel, 'text');
            app.StagetypeEditField.Position = [155 162 100 22];
            app.StagetypeEditField.Value = 'M-415.2S';

            % Create ControllerserialnumberEditFieldLabel
            app.ControllerserialnumberEditFieldLabel = uilabel(app.DelayLineConnectionPanel);
            app.ControllerserialnumberEditFieldLabel.HorizontalAlignment = 'right';
            app.ControllerserialnumberEditFieldLabel.Position = [6 124 134 22];
            app.ControllerserialnumberEditFieldLabel.Text = 'Controller serial number';

            % Create ControllerserialnumberEditField
            app.ControllerserialnumberEditField = uieditfield(app.DelayLineConnectionPanel, 'text');
            app.ControllerserialnumberEditField.Position = [155 124 100 22];
            app.ControllerserialnumberEditField.Value = '0125500210';

            % Create ConnectioninterfaceDropDownLabel
            app.ConnectioninterfaceDropDownLabel = uilabel(app.DelayLineConnectionPanel);
            app.ConnectioninterfaceDropDownLabel.HorizontalAlignment = 'right';
            app.ConnectioninterfaceDropDownLabel.Position = [26 87 116 22];
            app.ConnectioninterfaceDropDownLabel.Text = 'Connection interface';

            % Create ConnectioninterfaceDropDown
            app.ConnectioninterfaceDropDown = uidropdown(app.DelayLineConnectionPanel);
            app.ConnectioninterfaceDropDown.Items = {'USB', 'Serial'};
            app.ConnectioninterfaceDropDown.Position = [156 87 100 22];
            app.ConnectioninterfaceDropDown.Value = 'USB';

            % Create PortEditFieldLabel
            app.PortEditFieldLabel = uilabel(app.DelayLineConnectionPanel);
            app.PortEditFieldLabel.HorizontalAlignment = 'right';
            app.PortEditFieldLabel.Position = [108 52 28 22];
            app.PortEditFieldLabel.Text = 'Port';

            % Create PortEditField
            app.PortEditField = uieditfield(app.DelayLineConnectionPanel, 'text');
            app.PortEditField.Position = [151 52 100 22];
            app.PortEditField.Value = 'COM';

            % Create PositionEditFieldLabel
            app.PositionEditFieldLabel = uilabel(app.DelaylineTab);
            app.PositionEditFieldLabel.HorizontalAlignment = 'right';
            app.PositionEditFieldLabel.Position = [575 340 48 22];
            app.PositionEditFieldLabel.Text = 'Position';

            % Create PositionEditField
            app.PositionEditField = uieditfield(app.DelaylineTab, 'numeric');
            app.PositionEditField.ValueDisplayFormat = '%.4f';
            app.PositionEditField.Position = [638 340 100 22];
            app.PositionEditField.Value = 45.4349;

            % Create MoveButton
            app.MoveButton = uibutton(app.DelaylineTab, 'push');
            app.MoveButton.ButtonPushedFcn = createCallbackFcn(app, @MoveButtonPushed, true);
            app.MoveButton.Position = [603 291 100 22];
            app.MoveButton.Text = 'Move';

            % Create ScandelayButton
            app.ScandelayButton = uibutton(app.DelaylineTab, 'push');
            app.ScandelayButton.ButtonPushedFcn = createCallbackFcn(app, @ScandelayButtonPushed, true);
            app.ScandelayButton.Position = [603 256 100 22];
            app.ScandelayButton.Text = 'Scan delay';

            % Create OffsetmmEditFieldLabel
            app.OffsetmmEditFieldLabel = uilabel(app.DelaylineTab);
            app.OffsetmmEditFieldLabel.HorizontalAlignment = 'right';
            app.OffsetmmEditFieldLabel.Position = [393 145 64 22];
            app.OffsetmmEditFieldLabel.Text = 'Offset, mm';

            % Create OffsetmmEditField
            app.OffsetmmEditField = uieditfield(app.DelaylineTab, 'numeric');
            app.OffsetmmEditField.ValueDisplayFormat = '%.4f';
            app.OffsetmmEditField.Position = [472 145 67 22];
            app.OffsetmmEditField.Value = 45.4349;

            % Create RangemmEditFieldLabel
            app.RangemmEditFieldLabel = uilabel(app.DelaylineTab);
            app.RangemmEditFieldLabel.HorizontalAlignment = 'right';
            app.RangemmEditFieldLabel.Position = [393 112 68 22];
            app.RangemmEditFieldLabel.Text = 'Range, mm';

            % Create RangemmEditField
            app.RangemmEditField = uieditfield(app.DelaylineTab, 'numeric');
            app.RangemmEditField.Position = [476 112 63 22];
            app.RangemmEditField.Value = 0.2;

            % Create StepmmEditFieldLabel
            app.StepmmEditFieldLabel = uilabel(app.DelaylineTab);
            app.StepmmEditFieldLabel.HorizontalAlignment = 'right';
            app.StepmmEditFieldLabel.Position = [393 79 57 22];
            app.StepmmEditFieldLabel.Text = 'Step, mm';

            % Create StepmmEditField
            app.StepmmEditField = uieditfield(app.DelaylineTab, 'numeric');
            app.StepmmEditField.Position = [465 79 74 22];
            app.StepmmEditField.Value = 0.0025;

            % Create ChannelEditFieldLabel
            app.ChannelEditFieldLabel = uilabel(app.DelaylineTab);
            app.ChannelEditFieldLabel.HorizontalAlignment = 'right';
            app.ChannelEditFieldLabel.Position = [528 204 50 22];
            app.ChannelEditFieldLabel.Text = 'Channel';

            % Create ChannelEditField
            app.ChannelEditField = uieditfield(app.DelaylineTab, 'text');
            app.ChannelEditField.Position = [593 204 100 22];
            app.ChannelEditField.Value = 'ai0';

            % Create Button2
            app.Button2 = uibutton(app.DelaylineTab, 'push');
            app.Button2.ButtonPushedFcn = createCallbackFcn(app, @Button2Pushed, true);
            app.Button2.Position = [184 112 100 22];
            app.Button2.Text = 'Button2';

            % Create PIFOCTab
            app.PIFOCTab = uitab(app.TabGroup);
            app.PIFOCTab.Title = 'PIFOC';

            % Create PIFOCConnectionPanel
            app.PIFOCConnectionPanel = uipanel(app.PIFOCTab);
            app.PIFOCConnectionPanel.Title = 'PIFOC Connection';
            app.PIFOCConnectionPanel.Position = [60 229 452 221];

            % Create ConnectPIFOCButton
            app.ConnectPIFOCButton = uibutton(app.PIFOCConnectionPanel, 'push');
            app.ConnectPIFOCButton.ButtonPushedFcn = createCallbackFcn(app, @ConnectPIFOCButtonPushed, true);
            app.ConnectPIFOCButton.Position = [175 23 100 22];
            app.ConnectPIFOCButton.Text = 'Connect PIFOC';

            % Create PIFOCStageTypeEditFieldLabel
            app.PIFOCStageTypeEditFieldLabel = uilabel(app.PIFOCConnectionPanel);
            app.PIFOCStageTypeEditFieldLabel.HorizontalAlignment = 'right';
            app.PIFOCStageTypeEditFieldLabel.Position = [190 162 106 22];
            app.PIFOCStageTypeEditFieldLabel.Text = 'PIFOC Stage Type';

            % Create PIFOCStageTypeEditField
            app.PIFOCStageTypeEditField = uieditfield(app.PIFOCConnectionPanel, 'text');
            app.PIFOCStageTypeEditField.Position = [311 162 100 22];
            app.PIFOCStageTypeEditField.Value = '''''';

            % Create PIFOCConnectionInterfaceDropDownLabel
            app.PIFOCConnectionInterfaceDropDownLabel = uilabel(app.PIFOCConnectionPanel);
            app.PIFOCConnectionInterfaceDropDownLabel.HorizontalAlignment = 'right';
            app.PIFOCConnectionInterfaceDropDownLabel.Position = [142 87 156 22];
            app.PIFOCConnectionInterfaceDropDownLabel.Text = 'PIFOC Connection Interface';

            % Create PIFOCConnectionInterfaceDropDown
            app.PIFOCConnectionInterfaceDropDown = uidropdown(app.PIFOCConnectionPanel);
            app.PIFOCConnectionInterfaceDropDown.Items = {'USB', 'Serial'};
            app.PIFOCConnectionInterfaceDropDown.Position = [312 87 100 22];
            app.PIFOCConnectionInterfaceDropDown.Value = 'USB';

            % Create PortEditField_2Label
            app.PortEditField_2Label = uilabel(app.PIFOCConnectionPanel);
            app.PortEditField_2Label.HorizontalAlignment = 'right';
            app.PortEditField_2Label.Position = [266 52 28 22];
            app.PortEditField_2Label.Text = 'Port';

            % Create PortEditField_2
            app.PortEditField_2 = uieditfield(app.PIFOCConnectionPanel, 'text');
            app.PortEditField_2.Position = [309 52 100 22];
            app.PortEditField_2.Value = 'COM';

            % Create PIFOCControllerSerialNumberDropDownLabel
            app.PIFOCControllerSerialNumberDropDownLabel = uilabel(app.PIFOCConnectionPanel);
            app.PIFOCControllerSerialNumberDropDownLabel.HorizontalAlignment = 'right';
            app.PIFOCControllerSerialNumberDropDownLabel.Position = [46 129 178 22];
            app.PIFOCControllerSerialNumberDropDownLabel.Text = 'PIFOC Controller Serial Number';

            % Create PIFOCControllerSerialNumberDropDown
            app.PIFOCControllerSerialNumberDropDown = uidropdown(app.PIFOCConnectionPanel);
            app.PIFOCControllerSerialNumberDropDown.Items = {'12220(Room 134b)', '120004758 (Room 22)'};
            app.PIFOCControllerSerialNumberDropDown.ItemsData = {'12220', '', '120004758'};
            app.PIFOCControllerSerialNumberDropDown.Editable = 'on';
            app.PIFOCControllerSerialNumberDropDown.BackgroundColor = [1 1 1];
            app.PIFOCControllerSerialNumberDropDown.Position = [239 129 173 22];
            app.PIFOCControllerSerialNumberDropDown.Value = '12220';

            % Create MoveZButton
            app.MoveZButton = uibutton(app.PIFOCTab, 'push');
            app.MoveZButton.ButtonPushedFcn = createCallbackFcn(app, @MoveZButtonPushed, true);
            app.MoveZButton.Position = [816 302 100 22];
            app.MoveZButton.Text = 'Move Z';

            % Create SetZPositionEditFieldLabel
            app.SetZPositionEditFieldLabel = uilabel(app.PIFOCTab);
            app.SetZPositionEditFieldLabel.HorizontalAlignment = 'right';
            app.SetZPositionEditFieldLabel.Position = [768 337 80 22];
            app.SetZPositionEditFieldLabel.Text = 'Set Z Position';

            % Create SetZPositionEditField
            app.SetZPositionEditField = uieditfield(app.PIFOCTab, 'numeric');
            app.SetZPositionEditField.Position = [863 337 100 22];
            app.SetZPositionEditField.Value = 100;

            % Create LogTextAreaLabel
            app.LogTextAreaLabel = uilabel(app.MatMicroMain);
            app.LogTextAreaLabel.HorizontalAlignment = 'right';
            app.LogTextAreaLabel.Position = [9 94 26 22];
            app.LogTextAreaLabel.Text = {'Log'; ''};

            % Create LogTextArea
            app.LogTextArea = uitextarea(app.MatMicroMain);
            app.LogTextArea.Editable = 'off';
            app.LogTextArea.Position = [50 15 1001 103];

            % Show the figure after all components are created
            app.MatMicroMain.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = microMOSAICdotNET

            % Create UIFigure and components
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