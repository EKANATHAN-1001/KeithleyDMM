classdef Configuration < instrument.ivicom.Interface
    %CONFIGURATION IKeithleyDMM6500MeasurementConfiguration interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = Configuration(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);

            %% Initialize properties
            try
                obj.Math = instrument.driver.KeithleyDMM6500.DeviceSpecific.Measurement.Configuration.Math(obj.interface.Math);
            catch %#ok<CTCH>
            end

            try
                obj.Limit = instrument.driver.KeithleyDMM6500.DeviceSpecific.Measurement.Configuration.Limit(obj.interface.Limit);
            catch %#ok<CTCH>
            end

            try
                obj.List = instrument.driver.KeithleyDMM6500.DeviceSpecific.Measurement.Configuration.List(obj.interface.List);
            catch %#ok<CTCH>
            end

            try
                obj.Temperature = instrument.driver.KeithleyDMM6500.DeviceSpecific.Measurement.Configuration.Temperature(obj.interface.Temperature);
            catch %#ok<CTCH>
            end

            try
                obj.AnalogTrigger = instrument.driver.KeithleyDMM6500.DeviceSpecific.Measurement.Configuration.AnalogTrigger(obj.interface.AnalogTrigger);
            catch %#ok<CTCH>
            end

            try
                obj.Filter = instrument.driver.KeithleyDMM6500.DeviceSpecific.Measurement.Configuration.Filter(obj.interface.Filter);
            catch %#ok<CTCH>
            end

            try
                obj.Relative = instrument.driver.KeithleyDMM6500.DeviceSpecific.Measurement.Configuration.Relative(obj.interface.Relative);
            catch %#ok<CTCH>
            end

        end
        
        function delete(obj)
            obj.Math = [];
            obj.Limit = [];
            obj.List = [];
            obj.Temperature = [];
            obj.AnalogTrigger = [];
            obj.Filter = [];
            obj.Relative = [];
        end

    end
    
    %% Public Properties
    properties

        %COUNT Sets or Queries the number of measurements to be performed when a measurement is requested.
        Count

        %DCVOLTINPUTIMPEDANCE This property determines when the 10 MO input divider is enabled.
        DCVoltInputImpedance

    end

    %% Public Read Only Properties
    properties (SetAccess = private)

        %MATH Pointer to the IKeithleyDMM6500MeasurementMath interface. Read Only.
        Math

        %LIMIT Pointer to the IKeithleyDMM6500MeasurementConfigurationLimit interface. Read Only.
        Limit

        %LIST Pointer to the IKeithleyDMM6500MeasurementConfigurationList interface. Read Only.
        List

        %TEMPERATURE Pointer to the IKeithleyDMM6500MeasurementConfigurationTemperature interface. Read Only.
        Temperature

        %DCVOLTAGERATIOSENSERANGE This property sets or queries the positive full-scale value of the measurement range for the DC Voltage ratio function.Autorange is automatically set to off if a specific value is set. Read Only.
        DCVoltageRatioSenseRange

        %ANALOGTRIGGER Pointer to the IKeithleyDMM6500MeasurementConfigurationAnalogTrigger interface. Read Only.
        AnalogTrigger

        %FILTER Pointer to the IKeithleyDMM6500MeasurementConfigurationFilter interface. Read Only.
        Filter

        %RELATIVE Pointer to the IKeithleyDMM6500MeasurementConfigurationRelative interface. Read Only.
        Relative

    end

    %% Property access methods
    methods

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

        %% Math property access methods
        function value = get.Math(obj)
            obj.checkValidObj();
            if isempty(obj.Math)
                try
                    obj.Math = instrument.driver.KeithleyDMM6500.DeviceSpecific.Measurement.Configuration.Math(obj.interface.Math);
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
                    obj.Limit = instrument.driver.KeithleyDMM6500.DeviceSpecific.Measurement.Configuration.Limit(obj.interface.Limit);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Limit;
        end

        %% List property access methods
        function value = get.List(obj)
            obj.checkValidObj();
            if isempty(obj.List)
                try
                    obj.List = instrument.driver.KeithleyDMM6500.DeviceSpecific.Measurement.Configuration.List(obj.interface.List);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.List;
        end

        %% Temperature property access methods
        function value = get.Temperature(obj)
            obj.checkValidObj();
            if isempty(obj.Temperature)
                try
                    obj.Temperature = instrument.driver.KeithleyDMM6500.DeviceSpecific.Measurement.Configuration.Temperature(obj.interface.Temperature);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Temperature;
        end

        %% DCVoltageRatioSenseRange property access methods
        function value = get.DCVoltageRatioSenseRange(obj)
            obj.checkValidObj();
            try
                value = obj.interface.DCVoltageRatioSenseRange;
            catch e
                obj.interpretError(e);
            end
        end

        %% AnalogTrigger property access methods
        function value = get.AnalogTrigger(obj)
            obj.checkValidObj();
            if isempty(obj.AnalogTrigger)
                try
                    obj.AnalogTrigger = instrument.driver.KeithleyDMM6500.DeviceSpecific.Measurement.Configuration.AnalogTrigger(obj.interface.AnalogTrigger);
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

        %% Filter property access methods
        function value = get.Filter(obj)
            obj.checkValidObj();
            if isempty(obj.Filter)
                try
                    obj.Filter = instrument.driver.KeithleyDMM6500.DeviceSpecific.Measurement.Configuration.Filter(obj.interface.Filter);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Filter;
        end

        %% Relative property access methods
        function value = get.Relative(obj)
            obj.checkValidObj();
            if isempty(obj.Relative)
                try
                    obj.Relative = instrument.driver.KeithleyDMM6500.DeviceSpecific.Measurement.Configuration.Relative(obj.interface.Relative);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Relative;
        end

    end

    %% Public Methods
    methods

        function AutoZeroOnce(obj)
            %AUTOZEROONCE Do a once time refresh of the reference and zero measurements.
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            try
                obj.interface.AutoZeroOnce();
            catch e
                obj.interpretError(e);
            end
        end

        function val = NPLC(obj,Function,newValue)
            %NPLC Sets or queries the amount of time(based on the number of power line cycles) that the input signal is measured.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.NPLC(int32(Function));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'NPLC');
                    obj.interface.NPLC(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = AutoRange(obj,Function,newValue)
            %AUTORANGE Sets or queries the selected measurement's auto range state.Auto range feature not supported for Diode measurements.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.AutoRange(int32(Function));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'AutoRange');
                    obj.interface.AutoRange(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = Range(obj,Function,newValue)
            %RANGE Sets or queries the positive full-scale value of the measurement range for measurements of the selected function.
            
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

        function val = VoltageUnits(obj,Function,newValue)
            %VOLTAGEUNITS Sets or queries the Voltage function's units.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.VoltageUnits(int32(Function));
                else
                            obj.interface.VoltageUnits(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = AutoDelay(obj,Function,newValue)
            %AUTODELAY Sets or Queries the specified measurement function's AUTO delay state.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.AutoDelay(int32(Function));
                else
                            obj.interface.AutoDelay(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = BiasLevel(obj,Function,newValue)
            %BIASLEVEL Sets or Queries the specified function's Bias Level.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.BiasLevel(int32(Function));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'BiasLevel');
                    obj.interface.BiasLevel(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = DetectorBandwidth(obj,Function,newValue)
            %DETECTORBANDWIDTH Sets or Queries the specified AC function's Detector Bandwidth.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.DetectorBandwidth(int32(Function));
                else
                            obj.interface.DetectorBandwidth(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = DBReference(obj,Function,newValue)
            %DBREFERENCE Sets or Queries the specified Voltage function's DB Reference values.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.DBReference(int32(Function));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'DBReference');
                    obj.interface.DBReference(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = AutoZeroEnabled(obj,Function,newValue)
            %AUTOZEROENABLED Sets or queries the auto zero enabled state.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.AutoZeroEnabled(int32(Function));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'AutoZeroEnabled');
                    obj.interface.AutoZeroEnabled(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = LineSync(obj,Function,newValue)
            %LINESYNC Sets or queries the LineSync state for the specified measurement function.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.LineSync(int32(Function));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'LineSync');
                    obj.interface.LineSync(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = Aperture(obj,Function,newValue)
            %APERTURE Sets or queries the Aperture value for the specified measurement function.
            
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

        function val = OffsetCompensationEnabled(obj,Function,newValue)
            %OFFSETCOMPENSATIONENABLED This property enables or disables offset compensation.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.OffsetCompensationEnabled(int32(Function));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'OffsetCompensationEnabled');
                    obj.interface.OffsetCompensationEnabled(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = FreqPeriodThresholdVoltageRange(obj,FreqPeriod,newValue)
            %FREQPERIODTHRESHOLDVOLTAGERANGE This property indicates the expected input level of the voltage signal.Ranges from 100mV to 750V.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.FreqPeriodThresholdVoltageRange(int32(FreqPeriod));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'FreqPeriodThresholdVoltageRange');
                    obj.interface.FreqPeriodThresholdVoltageRange(int32(FreqPeriod),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = FreqPeriodThresholdVoltageRangeAutoState(obj,FreqPeriod,newValue)
            %FREQPERIODTHRESHOLDVOLTAGERANGEAUTOSTATE This property determines if the measurement range is set manually or automatically for the selected frequency or period measurement function.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.FreqPeriodThresholdVoltageRangeAutoState(int32(FreqPeriod));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'FreqPeriodThresholdVoltageRangeAutoState');
                    obj.interface.FreqPeriodThresholdVoltageRangeAutoState(int32(FreqPeriod),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = OpenDetector(obj,Function,newValue)
            %OPENDETECTOR This property determines if detection of open leads is enabled or disabled.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.OpenDetector(int32(Function));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'OpenDetector');
                    obj.interface.OpenDetector(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelAperture(obj,Function,ChannelList,newValue)
            %CHANNELAPERTURE Sets or queries the Aperture value for the specified measurement function.
            
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

        function val = ChannelBiasLevel(obj,Function,ChannelList,newValue)
            %CHANNELBIASLEVEL Sets or Queries the specified function's Bias Level.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelBiasLevel(int32(Function),char(ChannelList));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'ChannelBiasLevel');
                    obj.interface.ChannelBiasLevel(int32(Function),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelDCVoltageRatioSenseRange(obj,ChannelList,newValue)
            %CHANNELDCVOLTAGERATIOSENSERANGE This property sets or queries the positive full-scale value of the measurement range for the DC Voltage ratio function.Autorange is automatically set to off if a specific value is set.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 2
                    [val] = obj.interface.ChannelDCVoltageRatioSenseRange(char(ChannelList));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'ChannelDCVoltageRatioSenseRange');
                    obj.interface.ChannelDCVoltageRatioSenseRange(char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelDBReference(obj,Function,ChannelList,newValue)
            %CHANNELDBREFERENCE Sets or Queries the specified Voltage function's DB Reference values.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelDBReference(int32(Function),char(ChannelList));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'ChannelDBReference');
                    obj.interface.ChannelDBReference(int32(Function),char(ChannelList),newValue);
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

        function val = ChannelDetectorBandwidth(obj,Function,ChannelList,newValue)
            %CHANNELDETECTORBANDWIDTH Sets or Queries the specified AC function's Detector Bandwidth.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelDetectorBandwidth(int32(Function),char(ChannelList));
                else
                            obj.interface.ChannelDetectorBandwidth(int32(Function),char(ChannelList),newValue);
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

        function val = ChannelAutoDelay(obj,Function,ChannelList,newValue)
            %CHANNELAUTODELAY Sets or Queries the specified measurement function's AUTO delay state.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelAutoDelay(int32(Function),char(ChannelList));
                else
                            obj.interface.ChannelAutoDelay(int32(Function),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelLineSync(obj,Function,ChannelList,newValue)
            %CHANNELLINESYNC Sets or queries the LineSync state for the specified measurement function.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelLineSync(int32(Function),char(ChannelList));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'ChannelLineSync');
                    obj.interface.ChannelLineSync(int32(Function),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelNPLC(obj,Function,ChannelList,newValue)
            %CHANNELNPLC Sets or queries the amount of time(based on the number of power line cycles) that the input signal is measured.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelNPLC(int32(Function),char(ChannelList));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'ChannelNPLC');
                    obj.interface.ChannelNPLC(int32(Function),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelOffsetCompensationEnabled(obj,Function,ChannelList,newValue)
            %CHANNELOFFSETCOMPENSATIONENABLED This property enables or disables offset compensation.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelOffsetCompensationEnabled(int32(Function),char(ChannelList));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'ChannelOffsetCompensationEnabled');
                    obj.interface.ChannelOffsetCompensationEnabled(int32(Function),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelOpenDetector(obj,Function,ChannelList,newValue)
            %CHANNELOPENDETECTOR This property determines if detection of open leads is enabled or disabled.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelOpenDetector(int32(Function),char(ChannelList));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'ChannelOpenDetector');
                    obj.interface.ChannelOpenDetector(int32(Function),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelRange(obj,Function,ChannelList,newValue)
            %CHANNELRANGE Sets or queries the positive full-scale value of the measurement range for measurements of the selected function.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelRange(int32(Function),char(ChannelList));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'ChannelRange');
                    obj.interface.ChannelRange(int32(Function),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelAutoRange(obj,Function,ChannelList,newValue)
            %CHANNELAUTORANGE Sets or queries the selected measurement's auto range state.Auto range feature not supported for Diode measurements.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelAutoRange(int32(Function),char(ChannelList));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'ChannelAutoRange');
                    obj.interface.ChannelAutoRange(int32(Function),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelVoltageUnits(obj,Function,ChannelList,newValue)
            %CHANNELVOLTAGEUNITS Sets or queries the Voltage function's units.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelVoltageUnits(int32(Function),char(ChannelList));
                else
                            obj.interface.ChannelVoltageUnits(int32(Function),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelAutoZeroEnabled(obj,Function,ChannelList,newValue)
            %CHANNELAUTOZEROENABLED Sets or queries the auto zero enabled state.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelAutoZeroEnabled(int32(Function),char(ChannelList));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'ChannelAutoZeroEnabled');
                    obj.interface.ChannelAutoZeroEnabled(int32(Function),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

    end

end
