classdef Configuration < instrument.ivicom.Interface
    %CONFIGURATION IKeithleyDMM6500MeasurementConfiguration interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = Configuration(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);

            %% Initialize properties
            try
                obj.Math = instrument.driver.KeithleyDMM6500.DeviceSpecific.Digitizer.Configuration.Math(obj.interface.Math);
            catch %#ok<CTCH>
            end

            try
                obj.Limit = instrument.driver.KeithleyDMM6500.DeviceSpecific.Digitizer.Configuration.Limit(obj.interface.Limit);
            catch %#ok<CTCH>
            end

            try
                obj.AnalogTrigger = instrument.driver.KeithleyDMM6500.DeviceSpecific.Digitizer.Configuration.AnalogTrigger(obj.interface.AnalogTrigger);
            catch %#ok<CTCH>
            end

            try
                obj.Relative = instrument.driver.KeithleyDMM6500.DeviceSpecific.Digitizer.Configuration.Relative(obj.interface.Relative);
            catch %#ok<CTCH>
            end

        end
        
        function delete(obj)
            obj.Math = [];
            obj.Limit = [];
            obj.AnalogTrigger = [];
            obj.Relative = [];
        end

    end
    
    %% Public Properties
    properties

        %DCVOLTINPUTIMPEDANCE This property determines when the 10 MO input divider is enabled.
        DCVoltInputImpedance

        %COUNT Sets or Queries the number of measurements to be performed when a measurement is requested.
        Count

    end

    %% Public Read Only Properties
    properties (SetAccess = private)

        %MATH Pointer to the IKeithleyDMM6500DigitizerConfigurationMath interface. Read Only.
        Math

        %LIMIT Pointer to the IKeithleyDMM6500DigitizerConfigurationLimit interface. Read Only.
        Limit

        %ANALOGTRIGGER Pointer to the IKeithleyDMM6500DigitizerConfigurationAnalogTrigger interface. Read Only.
        AnalogTrigger

        %RELATIVE Pointer to the IKeithleyDMM6500DigitizerConfigurationRelative interface. Read Only.
        Relative

    end

    %% Property access methods
    methods

        %% Math property access methods
        function value = get.Math(obj)
            obj.checkValidObj();
            if isempty(obj.Math)
                try
                    obj.Math = instrument.driver.KeithleyDMM6500.DeviceSpecific.Digitizer.Configuration.Math(obj.interface.Math);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Math;
        end

        %% Limit property access methods
        function value = get.Limit(obj)
            obj.checkValidObj();
            if isempty(obj.Limit)
                try
                    obj.Limit = instrument.driver.KeithleyDMM6500.DeviceSpecific.Digitizer.Configuration.Limit(obj.interface.Limit);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Limit;
        end

        %% AnalogTrigger property access methods
        function value = get.AnalogTrigger(obj)
            obj.checkValidObj();
            if isempty(obj.AnalogTrigger)
                try
                    obj.AnalogTrigger = instrument.driver.KeithleyDMM6500.DeviceSpecific.Digitizer.Configuration.AnalogTrigger(obj.interface.AnalogTrigger);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.AnalogTrigger;
        end

        %% DCVoltInputImpedance property access methods
        function value = get.DCVoltInputImpedance(obj)
            obj.checkValidObj();
            try
                value = obj.interface.DCVoltInputImpedance;
            catch e
                obj.interpretError(e);
            end
        end
		function set.DCVoltInputImpedance(obj,newValue)
			obj.checkValidObj();
            try
                obj.interface.DCVoltInputImpedance = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% Relative property access methods
        function value = get.Relative(obj)
            obj.checkValidObj();
            if isempty(obj.Relative)
                try
                    obj.Relative = instrument.driver.KeithleyDMM6500.DeviceSpecific.Digitizer.Configuration.Relative(obj.interface.Relative);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Relative;
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
            newValue = obj.checkScalarInt32Arg(newValue,'Count');
            try
                obj.interface.Count = newValue;
            catch e
                obj.interpretError(e);
            end
        end

    end

    %% Public Methods
    methods

        function val = Range(obj,Function,newValue)
            %RANGE Sets or queries the positive full-scale value of the measurement range for measurements of the selected function.For continuity measurements range is read only.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.Range(int32(Function));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'Range');
                    obj.interface.Range(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = UserDelay(obj,Function,UserDelayIndex,newValue)
            %USERDELAY Sets or queries a user-defined delay that can be used in the trigger model.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            try
                if nargin == 3
                    [val] = obj.interface.UserDelay(int32(Function),int32(UserDelayIndex));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'UserDelay');
                    obj.interface.UserDelay(int32(Function),int32(UserDelayIndex),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = Aperture(obj,Function,newValue)
            %APERTURE Sets or queries the Aperture value for the specified measurement function. Set -1 for AUTO Aperture and query will return -1 if function's aperture is set to AUTO.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.Aperture(int32(Function));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'Aperture');
                    obj.interface.Aperture(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = SampleRate(obj,Function,newValue)
            %SAMPLERATE Sets or queries the sample rate for digitize measurements.1000 to 1,000,000 readings/second
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.SampleRate(int32(Function));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'SampleRate');
                    obj.interface.SampleRate(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelAperture(obj,Function,ChannelList,newValue)
            %CHANNELAPERTURE Sets or queries the Aperture value for the specified measurement function. Set -1 for AUTO Aperture and query will return -1 if function's aperture is set to AUTO.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelAperture(int32(Function),char(ChannelList));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'ChannelAperture');
                    obj.interface.ChannelAperture(int32(Function),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelDCVoltInputImpedance(obj,ChannelList,newValue)
            %CHANNELDCVOLTINPUTIMPEDANCE This property determines when the 10 MO input divider is enabled.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 2
                    [val] = obj.interface.ChannelDCVoltInputImpedance(char(ChannelList));
                else
                            obj.interface.ChannelDCVoltInputImpedance(char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelSampleRate(obj,Function,ChannelList,newValue)
            %CHANNELSAMPLERATE Sets or queries the sample rate for digitize measurements.1000 to 1,000,000 readings/second
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelSampleRate(int32(Function),char(ChannelList));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'ChannelSampleRate');
                    obj.interface.ChannelSampleRate(int32(Function),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelUserDelay(obj,Function,UserDelayIndex,ChannelList,newValue)
            %CHANNELUSERDELAY Sets or queries a user-defined delay that can be used in the trigger model.
            
            obj.checkValidObj();
			error(nargchk(4,5,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 4
                    [val] = obj.interface.ChannelUserDelay(int32(Function),int32(UserDelayIndex),char(ChannelList));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'ChannelUserDelay');
                    obj.interface.ChannelUserDelay(int32(Function),int32(UserDelayIndex),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

    end

end
