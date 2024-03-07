classdef Temperature < instrument.ivicom.Interface
    %TEMPERATURE IKeithleyDMM6500MeasurementConfigurationTemperature interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = Temperature(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);

            %% Initialize properties
            try
                obj.RTD = instrument.driver.KeithleyDMM6500.DeviceSpecific.Measurement.Configuration.Temperature.RTD(obj.interface.RTD);
            catch %#ok<CTCH>
            end

        end
        
        function delete(obj)
            obj.RTD = [];
        end

    end
    
    %% Public Properties
    properties

        %THERMOCOUPLESIMULATEDREFJUNCTION The external reference junction temperature when a fixed reference junction thermocouple is used to measure temperature, or the thermocouple junction temperature of an instrument without an internal temperature sensor, in degrees Celcius.
        ThermocoupleSimulatedRefJunction

        %THERMOCOUPLETYPE The type of thermocouple used to measure the temperature. Applies only when the Temperature Transducer Type is Thermocouple.
        ThermocoupleType

        %TRANSDUCERTYPE The type of device used to measure the temperature. This property affects instrument behavior only when Function is set to a temperature measurement.
        TransducerType

        %THERMISTORRESISTANCE The resistance of the thermistor in Ohms.  Applies only when the Temperature Transducer Type property is Thermistor.Valid values are 2200, 5000 or 10000,default is 5000.
        ThermistorResistance

        %UNITS Sets or queries units for temperature measurement.
        Units

        %THERMOCOUPLEREFJUNCTIONTYPE The property defines the type of the thermocouple reference junction.
        ThermocoupleRefJunctionType

    end

    %% Public Read Only Properties
    properties (SetAccess = private)

        %RTD Pointer to the IKeithleyDMM6500MeasurementConfigurationTemperatureRTD interface.Make sure the function is set to temperature, the transducer type is set to one of the RTD options to use properties and methods under RTD interface. Read Only.
        RTD

    end

    %% Property access methods
    methods

        %% ThermocoupleSimulatedRefJunction property access methods
        function value = get.ThermocoupleSimulatedRefJunction(obj)
            obj.checkValidObj();
            try
                value = obj.interface.ThermocoupleSimulatedRefJunction;
            catch e
                obj.interpretError(e);
            end
        end
		function set.ThermocoupleSimulatedRefJunction(obj,newValue)
			obj.checkValidObj();
            newValue = obj.checkScalarDoubleArg(newValue,'ThermocoupleSimulatedRefJunction');
            try
                obj.interface.ThermocoupleSimulatedRefJunction = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% ThermocoupleType property access methods
        function value = get.ThermocoupleType(obj)
            obj.checkValidObj();
            try
                value = obj.interface.ThermocoupleType;
            catch e
                obj.interpretError(e);
            end
        end
		function set.ThermocoupleType(obj,newValue)
			obj.checkValidObj();
            try
                obj.interface.ThermocoupleType = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% TransducerType property access methods
        function value = get.TransducerType(obj)
            obj.checkValidObj();
            try
                value = obj.interface.TransducerType;
            catch e
                obj.interpretError(e);
            end
        end
		function set.TransducerType(obj,newValue)
			obj.checkValidObj();
            try
                obj.interface.TransducerType = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% ThermistorResistance property access methods
        function value = get.ThermistorResistance(obj)
            obj.checkValidObj();
            try
                value = obj.interface.ThermistorResistance;
            catch e
                obj.interpretError(e);
            end
        end
		function set.ThermistorResistance(obj,newValue)
			obj.checkValidObj();
            newValue = obj.checkScalarDoubleArg(newValue,'ThermistorResistance');
            try
                obj.interface.ThermistorResistance = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% Units property access methods
        function value = get.Units(obj)
            obj.checkValidObj();
            try
                value = obj.interface.Units;
            catch e
                obj.interpretError(e);
            end
        end
		function set.Units(obj,newValue)
			obj.checkValidObj();
            try
                obj.interface.Units = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% RTD property access methods
        function value = get.RTD(obj)
            obj.checkValidObj();
            if isempty(obj.RTD)
                try
                    obj.RTD = instrument.driver.KeithleyDMM6500.DeviceSpecific.Measurement.Configuration.Temperature.RTD(obj.interface.RTD);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.RTD;
        end

        %% ThermocoupleRefJunctionType property access methods
        function value = get.ThermocoupleRefJunctionType(obj)
            obj.checkValidObj();
            try
                value = obj.interface.ThermocoupleRefJunctionType;
            catch e
                obj.interpretError(e);
            end
        end
		function set.ThermocoupleRefJunctionType(obj,newValue)
			obj.checkValidObj();
            try
                obj.interface.ThermocoupleRefJunctionType = newValue;
            catch e
                obj.interpretError(e);
            end
        end

    end

    %% Public Methods
    methods

        function val = ChannelThermistorResistance(obj,ChannelList,newValue)
            %CHANNELTHERMISTORRESISTANCE The resistance of the thermistor in Ohms.  Applies only when the Temperature Transducer Type property is Thermistor.Valid values are 2200, 5000 or 10000,default is 5000.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 2
                    [val] = obj.interface.ChannelThermistorResistance(char(ChannelList));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'ChannelThermistorResistance');
                    obj.interface.ChannelThermistorResistance(char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelThermocoupleSimulatedRefJunction(obj,ChannelList,newValue)
            %CHANNELTHERMOCOUPLESIMULATEDREFJUNCTION The external reference junction temperature when a fixed reference junction thermocouple is used to measure temperature, or the thermocouple junction temperature of an instrument without an internal temperature sensor, in degrees Celcius.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 2
                    [val] = obj.interface.ChannelThermocoupleSimulatedRefJunction(char(ChannelList));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'ChannelThermocoupleSimulatedRefJunction');
                    obj.interface.ChannelThermocoupleSimulatedRefJunction(char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelThermocoupleType(obj,ChannelList,newValue)
            %CHANNELTHERMOCOUPLETYPE The type of thermocouple used to measure the temperature. Applies only when the Temperature Transducer Type is Thermocouple.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 2
                    [val] = obj.interface.ChannelThermocoupleType(char(ChannelList));
                else
                            obj.interface.ChannelThermocoupleType(char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelTransducerType(obj,ChannelList,newValue)
            %CHANNELTRANSDUCERTYPE The type of device used to measure the temperature. This property affects instrument behavior only when Function is set to a temperature measurement.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 2
                    [val] = obj.interface.ChannelTransducerType(char(ChannelList));
                else
                            obj.interface.ChannelTransducerType(char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelUnits(obj,ChannelList,newValue)
            %CHANNELUNITS Sets or queries units for temperature measurement.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 2
                    [val] = obj.interface.ChannelUnits(char(ChannelList));
                else
                            obj.interface.ChannelUnits(char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelThermocoupleRefJunctionType(obj,ChannelList,newValue)
            %CHANNELTHERMOCOUPLEREFJUNCTIONTYPE The property defines the type of the thermocouple reference junction.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 2
                    [val] = obj.interface.ChannelThermocoupleRefJunctionType(char(ChannelList));
                else
                            obj.interface.ChannelThermocoupleRefJunctionType(char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

    end

end
