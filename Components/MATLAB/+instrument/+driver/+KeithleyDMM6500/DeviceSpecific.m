classdef DeviceSpecific < instrument.ivicom.Interface
    %DEVICESPECIFIC IKeithleyDMM6500 interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = DeviceSpecific(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);

            %% Initialize properties
            try
                obj.System = instrument.driver.KeithleyDMM6500.DeviceSpecific.System(obj.interface.System);
            catch %#ok<CTCH>
            end

            try
                obj.Measurement = instrument.driver.KeithleyDMM6500.DeviceSpecific.Measurement(obj.interface.Measurement);
            catch %#ok<CTCH>
            end

            try
                obj.DataTransfer = instrument.driver.KeithleyDMM6500.DeviceSpecific.DataTransfer(obj.interface.DataTransfer);
            catch %#ok<CTCH>
            end

            try
                obj.Buffer = instrument.driver.KeithleyDMM6500.DeviceSpecific.Buffer(obj.interface.Buffer);
            catch %#ok<CTCH>
            end

            try
                obj.Status = instrument.driver.KeithleyDMM6500.DeviceSpecific.Status(obj.interface.Status);
            catch %#ok<CTCH>
            end

            try
                obj.Trigger = instrument.driver.KeithleyDMM6500.DeviceSpecific.Trigger(obj.interface.Trigger);
            catch %#ok<CTCH>
            end

            try
                obj.Digital = instrument.driver.KeithleyDMM6500.DeviceSpecific.Digital(obj.interface.Digital);
            catch %#ok<CTCH>
            end

            try
                obj.Display = instrument.driver.KeithleyDMM6500.DeviceSpecific.Display(obj.interface.Display);
            catch %#ok<CTCH>
            end

            try
                obj.Digitizer = instrument.driver.KeithleyDMM6500.DeviceSpecific.Digitizer(obj.interface.Digitizer);
            catch %#ok<CTCH>
            end

            try
                obj.Route = instrument.driver.KeithleyDMM6500.DeviceSpecific.Route(obj.interface.Route);
            catch %#ok<CTCH>
            end

            try
                obj.DriverOperation = instrument.driver.KeithleyDMM6500.DeviceSpecific.DriverOperation(obj.interface.DriverOperation);
            catch %#ok<CTCH>
            end

            try
                obj.Identity = instrument.driver.KeithleyDMM6500.DeviceSpecific.Identity(obj.interface.Identity);
            catch %#ok<CTCH>
            end

            try
                obj.Utility = instrument.driver.KeithleyDMM6500.DeviceSpecific.Utility(obj.interface.Utility);
            catch %#ok<CTCH>
            end

        end
        
        function delete(obj)
            obj.System = [];
            obj.Measurement = [];
            obj.DataTransfer = [];
            obj.Buffer = [];
            obj.Status = [];
            obj.Trigger = [];
            obj.Digital = [];
            obj.Display = [];
            obj.Digitizer = [];
            obj.Route = [];
            obj.DriverOperation = [];
            obj.Identity = [];
            obj.Utility = [];
        end

    end
    
    %% Public Properties
    properties

        %FUNCTION The measurement function.  This property determines the units for Range and Resolution and the values returned by the Read, Read Multiple Point, Fetch, and Fetch Multiple Point methods.
        Function

    end

    %% Public Read Only Properties
    properties (SetAccess = private)

        %SYSTEM Pointer to the IKeithleyDMM6500System interface. Read Only.
        System

        %MEASUREMENT Pointer to the IKeithleyDMM6500Measurement interface. Read Only.
        Measurement

        %DATATRANSFER Pointer to the IKeithleyDMM6500DataTransfer interface. Read Only.
        DataTransfer

        %BUFFER Pointer to the IKeithleyDMM6500Buffer interface. Read Only.
        Buffer

        %STATUS Pointer to the IKeithleyDMM6500Status interface. Read Only.
        Status

        %TRIGGER Pointer to the IKeithleyDMM6500Trigger interface. Read Only.
        Trigger

        %DIGITAL Pointer to the IKeithleyDMM6500Digital interface. Read Only.
        Digital

        %DISPLAY Pointer to the IKeithleyDMM6500Display interface. Read Only.
        Display

        %DIGITIZER Pointer to the IKeithleyDMM6500Digitizer interface. Read Only.
        Digitizer

        %ROUTE Pointer to the IKeithleyDMM6500Route interface.The Route subsystem selects which set of input and output terminals to enable (front panel or rear panel). It also contains properties and methods to open, close, and set up scans for channels. Read Only.
        Route

        %DRIVEROPERATION Pointer to the IIviDriverOperation interface Read Only.
        DriverOperation

        %IDENTITY Pointer to the IIviDriverIdentity interface Read Only.
        Identity

        %UTILITY Pointer to the IIviDriverUtility interface Read Only.
        Utility

        %INITIALIZED Initialized is True between a successful call to the Initialize method and a successful call to the Close method, and False at all other times. Read Only.
        Initialized

    end

    %% Property access methods
    methods

        %% System property access methods
        function value = get.System(obj)
            obj.checkValidObj();
            if isempty(obj.System)
                try
                    obj.System = instrument.driver.KeithleyDMM6500.DeviceSpecific.System(obj.interface.System);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.System;
        end

        %% Measurement property access methods
        function value = get.Measurement(obj)
            obj.checkValidObj();
            if isempty(obj.Measurement)
                try
                    obj.Measurement = instrument.driver.KeithleyDMM6500.DeviceSpecific.Measurement(obj.interface.Measurement);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Measurement;
        end

        %% Function property access methods
        function value = get.Function(obj)
            obj.checkValidObj();
            try
                value = obj.interface.Function;
            catch e
                obj.interpretError(e);
            end
        end
		function set.Function(obj,newValue)
			obj.checkValidObj();
            try
                obj.interface.Function = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% DataTransfer property access methods
        function value = get.DataTransfer(obj)
            obj.checkValidObj();
            if isempty(obj.DataTransfer)
                try
                    obj.DataTransfer = instrument.driver.KeithleyDMM6500.DeviceSpecific.DataTransfer(obj.interface.DataTransfer);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.DataTransfer;
        end

        %% Buffer property access methods
        function value = get.Buffer(obj)
            obj.checkValidObj();
            if isempty(obj.Buffer)
                try
                    obj.Buffer = instrument.driver.KeithleyDMM6500.DeviceSpecific.Buffer(obj.interface.Buffer);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Buffer;
        end

        %% Status property access methods
        function value = get.Status(obj)
            obj.checkValidObj();
            if isempty(obj.Status)
                try
                    obj.Status = instrument.driver.KeithleyDMM6500.DeviceSpecific.Status(obj.interface.Status);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Status;
        end

        %% Trigger property access methods
        function value = get.Trigger(obj)
            obj.checkValidObj();
            if isempty(obj.Trigger)
                try
                    obj.Trigger = instrument.driver.KeithleyDMM6500.DeviceSpecific.Trigger(obj.interface.Trigger);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Trigger;
        end

        %% Digital property access methods
        function value = get.Digital(obj)
            obj.checkValidObj();
            if isempty(obj.Digital)
                try
                    obj.Digital = instrument.driver.KeithleyDMM6500.DeviceSpecific.Digital(obj.interface.Digital);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Digital;
        end

        %% Display property access methods
        function value = get.Display(obj)
            obj.checkValidObj();
            if isempty(obj.Display)
                try
                    obj.Display = instrument.driver.KeithleyDMM6500.DeviceSpecific.Display(obj.interface.Display);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Display;
        end

        %% Digitizer property access methods
        function value = get.Digitizer(obj)
            obj.checkValidObj();
            if isempty(obj.Digitizer)
                try
                    obj.Digitizer = instrument.driver.KeithleyDMM6500.DeviceSpecific.Digitizer(obj.interface.Digitizer);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Digitizer;
        end

        %% Route property access methods
        function value = get.Route(obj)
            obj.checkValidObj();
            if isempty(obj.Route)
                try
                    obj.Route = instrument.driver.KeithleyDMM6500.DeviceSpecific.Route(obj.interface.Route);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Route;
        end

        %% DriverOperation property access methods
        function value = get.DriverOperation(obj)
            obj.checkValidObj();
            if isempty(obj.DriverOperation)
                try
                    obj.DriverOperation = instrument.driver.KeithleyDMM6500.DeviceSpecific.DriverOperation(obj.interface.DriverOperation);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.DriverOperation;
        end

        %% Identity property access methods
        function value = get.Identity(obj)
            obj.checkValidObj();
            if isempty(obj.Identity)
                try
                    obj.Identity = instrument.driver.KeithleyDMM6500.DeviceSpecific.Identity(obj.interface.Identity);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Identity;
        end

        %% Utility property access methods
        function value = get.Utility(obj)
            obj.checkValidObj();
            if isempty(obj.Utility)
                try
                    obj.Utility = instrument.driver.KeithleyDMM6500.DeviceSpecific.Utility(obj.interface.Utility);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Utility;
        end

        %% Initialized property access methods
        function value = get.Initialized(obj)
            obj.checkValidObj();
            try
                value = obj.interface.Initialized;
            catch e
                obj.interpretError(e);
            end
        end

    end

    %% Public Methods
    methods

        function RunScript(obj,ScriptName)
            %RUNSCRIPT This method runs a script.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            ScriptName = obj.checkScalarStringArg(ScriptName,'ScriptName');
            try
                obj.interface.RunScript(char(ScriptName));
            catch e
                obj.interpretError(e);
            end
        end

        function Initialize(obj,ResourceName,IdQuery,Reset,OptionString)
            %INITIALIZE Opens the I/O session to the instrument.  Driver methods and properties that access the instrument are only accessible after Initialize is called.  Initialize optionally performs a Reset and queries the instrument to validate the instrument model.
            
            obj.checkValidObj();
			error(nargchk(5,5,nargin,'struct'))
            ResourceName = obj.checkScalarStringArg(ResourceName,'ResourceName');
            IdQuery = obj.checkScalarBoolArg(IdQuery,'IdQuery');
            Reset = obj.checkScalarBoolArg(Reset,'Reset');
            OptionString = obj.checkScalarStringArg(OptionString,'OptionString');
            try
                obj.interface.Initialize(char(ResourceName),logical(IdQuery),logical(Reset),char(OptionString));
            catch e
                obj.interpretError(e);
            end
        end

        function Close(obj)
            %CLOSE Closes the I/O session to the instrument.  Driver methods and properties that access the instrument are not accessible after Close is called.
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            try
                obj.interface.Close();
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelFunction(obj,ChannelList,newValue)
            %CHANNELFUNCTION The measurement function.  This property determines the units for Range and Resolution and the values returned by the Read, Read Multiple Point, Fetch, and Fetch Multiple Point methods.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 2
                    [val] = obj.interface.ChannelFunction(char(ChannelList));
                else
                            obj.interface.ChannelFunction(char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

    end

end
