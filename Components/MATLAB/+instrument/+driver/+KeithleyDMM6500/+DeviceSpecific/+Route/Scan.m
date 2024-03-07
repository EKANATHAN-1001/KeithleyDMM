classdef Scan < instrument.ivicom.Interface
    %SCAN IKeithleyDMM6500RouteScan interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = Scan(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);

            %% Initialize properties
            try
                obj.Monitor = instrument.driver.KeithleyDMM6500.DeviceSpecific.Route.Scan.Monitor(obj.interface.Monitor);
            catch %#ok<CTCH>
            end

        end
        
        function delete(obj)
            obj.Monitor = [];
        end

    end
    
    %% Public Properties
    properties

        %BUFFER The property defines which buffer is used with the scan.
        Buffer

        %BYPASS The property indicates whether the first channel of the scan waits for the channel stimulus event to be satisfied before closing. Enable Bypass is TRUE.
        Bypass

        %CHANNELSTIMULUS The property determines which trigger event causes the step action to occur.
        ChannelStimulus

        %COUNT The property sets or queries the scan count in the trigger model. It indicates how many times the scan list is iterated through before the scan completes.
        Count

        %INTERVAL The property specifies the interval time between scan starts when the scan count is more than one.
        Interval

        %MEASURESTIMULUS The property determines trigger event for measurement.
        MeasureStimulus

        %MEASUREINTERVAL The property specifies the interval time between scan starts when the scan count is more than one.
        MeasureInterval

        %MODE Scan mode settings.
        Mode

        %RESTART This property causes a scan to automatically restart if it was interrupted by a power failure.True will Enable Scan Restart
        Restart

        %STARTSTIMULUS The property determines which trigger event starts the scan.
        StartStimulus

    end

    %% Public Read Only Properties
    properties (SetAccess = private)

        %STEPCOUNT The property returns the number of steps in the present scan. Read Only.
        StepCount

        %MONITOR Pointer to the IKeithleyDMM6500RouteScanMonitor interface. Read Only.
        Monitor

    end

    %% Property access methods
    methods

        %% Buffer property access methods
        function value = get.Buffer(obj)
            obj.checkValidObj();
            try
                value = obj.interface.Buffer;
            catch e
                obj.interpretError(e);
            end
        end
		function set.Buffer(obj,newValue)
			obj.checkValidObj();
            newValue = obj.checkScalarStringArg(newValue,'Buffer');
            try
                obj.interface.Buffer = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% Bypass property access methods
        function value = get.Bypass(obj)
            obj.checkValidObj();
            try
                value = obj.interface.Bypass;
            catch e
                obj.interpretError(e);
            end
        end
		function set.Bypass(obj,newValue)
			obj.checkValidObj();
            newValue = obj.checkScalarBoolArg(newValue,'Bypass');
            try
                obj.interface.Bypass = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% ChannelStimulus property access methods
        function value = get.ChannelStimulus(obj)
            obj.checkValidObj();
            try
                value = obj.interface.ChannelStimulus;
            catch e
                obj.interpretError(e);
            end
        end
		function set.ChannelStimulus(obj,newValue)
			obj.checkValidObj();
            newValue = obj.checkScalarStringArg(newValue,'ChannelStimulus');
            try
                obj.interface.ChannelStimulus = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% Count property access methods
        function value = get.Count(obj)
            obj.checkValidObj();
            try
                value = obj.interface.Count;
            catch e
                obj.interpretError(e);
            end
        end
		function set.Count(obj,newValue)
			obj.checkValidObj();
            try
                obj.interface.Count = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% StepCount property access methods
        function value = get.StepCount(obj)
            obj.checkValidObj();
            try
                value = obj.interface.StepCount;
            catch e
                obj.interpretError(e);
            end
        end

        %% Interval property access methods
        function value = get.Interval(obj)
            obj.checkValidObj();
            try
                value = obj.interface.Interval;
            catch e
                obj.interpretError(e);
            end
        end
		function set.Interval(obj,newValue)
			obj.checkValidObj();
            newValue = obj.checkScalarDoubleArg(newValue,'Interval');
            try
                obj.interface.Interval = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% MeasureStimulus property access methods
        function value = get.MeasureStimulus(obj)
            obj.checkValidObj();
            try
                value = obj.interface.MeasureStimulus;
            catch e
                obj.interpretError(e);
            end
        end
		function set.MeasureStimulus(obj,newValue)
			obj.checkValidObj();
            newValue = obj.checkScalarStringArg(newValue,'MeasureStimulus');
            try
                obj.interface.MeasureStimulus = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% MeasureInterval property access methods
        function value = get.MeasureInterval(obj)
            obj.checkValidObj();
            try
                value = obj.interface.MeasureInterval;
            catch e
                obj.interpretError(e);
            end
        end
		function set.MeasureInterval(obj,newValue)
			obj.checkValidObj();
            newValue = obj.checkScalarDoubleArg(newValue,'MeasureInterval');
            try
                obj.interface.MeasureInterval = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% Mode property access methods
        function value = get.Mode(obj)
            obj.checkValidObj();
            try
                value = obj.interface.Mode;
            catch e
                obj.interpretError(e);
            end
        end
		function set.Mode(obj,newValue)
			obj.checkValidObj();
            try
                obj.interface.Mode = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% Restart property access methods
        function value = get.Restart(obj)
            obj.checkValidObj();
            try
                value = obj.interface.Restart;
            catch e
                obj.interpretError(e);
            end
        end
		function set.Restart(obj,newValue)
			obj.checkValidObj();
            newValue = obj.checkScalarBoolArg(newValue,'Restart');
            try
                obj.interface.Restart = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% StartStimulus property access methods
        function value = get.StartStimulus(obj)
            obj.checkValidObj();
            try
                value = obj.interface.StartStimulus;
            catch e
                obj.interpretError(e);
            end
        end
		function set.StartStimulus(obj,newValue)
			obj.checkValidObj();
            newValue = obj.checkScalarStringArg(newValue,'StartStimulus');
            try
                obj.interface.StartStimulus = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% Monitor property access methods
        function value = get.Monitor(obj)
            obj.checkValidObj();
            if isempty(obj.Monitor)
                try
                    obj.Monitor = instrument.driver.KeithleyDMM6500.DeviceSpecific.Route.Scan.Monitor(obj.interface.Monitor);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Monitor;
        end

    end

    %% Public Methods
    methods

        function Add(obj,ChannelList)
            %ADD The method adds scan steps to the scan list. If the scan list does not exist, it also creates a scan list. Channels are added to the end of the present list in the order in which they are specified in the channel list.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                obj.interface.Add(char(ChannelList));
            catch e
                obj.interpretError(e);
            end
        end

        function Add2(obj,ChannelList,ConfigurationList,Index)
            %ADD2 The method adds scan steps to the scan list. If the scan list does not exist, it also creates a scan list. Channels are added to the end of the present list in the order in which they are specified in the channel list.
            
            obj.checkValidObj();
			error(nargchk(4,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            ConfigurationList = obj.checkScalarStringArg(ConfigurationList,'ConfigurationList');
            Index = obj.checkScalarInt32Arg(Index,'Index');
            try
                obj.interface.Add2(char(ChannelList),char(ConfigurationList),int32(Index));
            catch e
                obj.interpretError(e);
            end
        end

        function AddSingle(obj,ChannelList)
            %ADDSINGLE This method allows to include multiple channels in a single scan step.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                obj.interface.AddSingle(char(ChannelList));
            catch e
                obj.interpretError(e);
            end
        end

        function AddSingle2(obj,ChannelList,ConfigurationList,Index)
            %ADDSINGLE2 This method allows to include multiple channels in a single scan step.
            
            obj.checkValidObj();
			error(nargchk(4,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            ConfigurationList = obj.checkScalarStringArg(ConfigurationList,'ConfigurationList');
            Index = obj.checkScalarInt32Arg(Index,'Index');
            try
                obj.interface.AddSingle2(char(ChannelList),char(ConfigurationList),int32(Index));
            catch e
                obj.interpretError(e);
            end
        end

        function AddWrite(obj,ChannelList,Value)
            %ADDWRITE The method writes a specified value to a channel at the added step in the scan.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            Value = obj.checkScalarDoubleArg(Value,'Value');
            try
                obj.interface.AddWrite(char(ChannelList),double(Value));
            catch e
                obj.interpretError(e);
            end
        end

        function Create(obj,ChannelList)
            %CREATE The method deletes the existing scan list and creates a new list of channels to scan. The items in the channel list are scanned in the order listed.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                obj.interface.Create(char(ChannelList));
            catch e
                obj.interpretError(e);
            end
        end

        function Create2(obj,ChannelList,ConfigurationList,Index)
            %CREATE2 The method deletes the existing scan list and creates a new list of channels to scan. The items in the channel list are scanned in the order listed.
            
            obj.checkValidObj();
			error(nargchk(4,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            ConfigurationList = obj.checkScalarStringArg(ConfigurationList,'ConfigurationList');
            Index = obj.checkScalarInt32Arg(Index,'Index');
            try
                obj.interface.Create2(char(ChannelList),char(ConfigurationList),int32(Index));
            catch e
                obj.interpretError(e);
            end
        end

        function val = Read(obj)
            %READ Read the Scan list.
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            try
                [val] = obj.interface.Read();
            catch e
                obj.interpretError(e);
            end
        end

        function Export(obj,Filename,When,What)
            %EXPORT The method stores data from a scan to a file on a USB flash drive.
            
            obj.checkValidObj();
			error(nargchk(4,4,nargin,'struct'))
            Filename = obj.checkScalarStringArg(Filename,'Filename');
            What = obj.checkScalarStringArg(What,'What');
            try
                obj.interface.Export(char(Filename),int32(When),char(What));
            catch e
                obj.interpretError(e);
            end
        end

        function LearnLimits(obj,Window,Interations)
            %LEARNLIMITS The method auto learns limit for every channel in the scan based on channels which are not nofunction.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            Window = obj.checkScalarDoubleArg(Window,'Window');
            Interations = obj.checkScalarInt32Arg(Interations,'Interations');
            try
                obj.interface.LearnLimits(double(Window),int32(Interations));
            catch e
                obj.interpretError(e);
            end
        end

        function FindLimits(obj,Window,Interations)
            %FINDLIMITS The method auto learns the limits for every channel in the scan.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            Window = obj.checkScalarDoubleArg(Window,'Window');
            Interations = obj.checkScalarInt32Arg(Interations,'Interations');
            try
                obj.interface.FindLimits(double(Window),int32(Interations));
            catch e
                obj.interpretError(e);
            end
        end

        function val = ReadScanState(obj)
            %READSCANSTATE The method returns the present state of a running background scan.
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            try
                [val] = obj.interface.ReadScanState();
            catch e
                obj.interpretError(e);
            end
        end

    end

end
