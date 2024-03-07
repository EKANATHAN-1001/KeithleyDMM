classdef Relative < instrument.ivicom.Interface
    %RELATIVE IKeithleyDMM6500MeasurementConfigurationRelative interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = Relative(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);
        end
        
        function delete(obj)
        end

    end
    
    %% Public Properties
    properties

        %DCVOLTRATIOMETHOD The property determines if relative offset is applied to the measurements before calculating the DC voltage ratio value.
        DCVoltRatioMethod

    end

    %% Property access methods
    methods

        %% DCVoltRatioMethod property access methods
        function value = get.DCVoltRatioMethod(obj)
            obj.checkValidObj();
            try
                value = obj.interface.DCVoltRatioMethod;
            catch e
                obj.interpretError(e);
            end
        end
		function set.DCVoltRatioMethod(obj,newValue)
			obj.checkValidObj();
            try
                obj.interface.DCVoltRatioMethod = newValue;
            catch e
                obj.interpretError(e);
            end
        end

    end

    %% Public Methods
    methods

        function Acquire(obj,Function)
            %ACQUIRE Acquires an internal measurement to store as the relative offset value.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            try
                obj.interface.Acquire(int32(Function));
            catch e
                obj.interpretError(e);
            end
        end

        function val = Offset(obj,Function,newValue)
            %OFFSET Sets or queries the relative offset value for the measurement.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.Offset(int32(Function));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'Offset');
                    obj.interface.Offset(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = OffsetState(obj,Function,newValue)
            %OFFSETSTATE Enables or disables the null relative offset value.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.OffsetState(int32(Function));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'OffsetState');
                    obj.interface.OffsetState(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelDCVoltRatioMethod(obj,ChannelList,newValue)
            %CHANNELDCVOLTRATIOMETHOD The property determines if relative offset is applied to the measurements before calculating the DC voltage ratio value.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 2
                    [val] = obj.interface.ChannelDCVoltRatioMethod(char(ChannelList));
                else
                            obj.interface.ChannelDCVoltRatioMethod(char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelOffset(obj,Function,ChannelList,newValue)
            %CHANNELOFFSET Sets or queries the relative offset value for the measurement.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelOffset(int32(Function),char(ChannelList));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'ChannelOffset');
                    obj.interface.ChannelOffset(int32(Function),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelOffsetState(obj,Function,ChannelList,newValue)
            %CHANNELOFFSETSTATE Enables or disables the null relative offset value.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelOffsetState(int32(Function),char(ChannelList));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'ChannelOffsetState');
                    obj.interface.ChannelOffsetState(int32(Function),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

    end

end
