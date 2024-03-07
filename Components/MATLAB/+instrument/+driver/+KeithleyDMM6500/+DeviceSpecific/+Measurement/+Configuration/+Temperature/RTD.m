classdef RTD < instrument.ivicom.Interface
    %RTD IKeithleyDMM6500MeasurementConfigurationTemperatureRTD interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = RTD(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);
        end
        
        function delete(obj)
        end

    end
    
    %% Public Methods
    methods

        function val = ReadChannelConstants(obj,Constant,ChannelList)
            %READCHANNELCONSTANTS Read the specified RTD constant values.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                [val] = obj.interface.ReadChannelConstants(int32(Constant),char(ChannelList));
            catch e
                obj.interpretError(e);
            end
        end

        function val = ReadConstants(obj,Constant)
            %READCONSTANTS Read the specified RTD constant values.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            try
                [val] = obj.interface.ReadConstants(int32(Constant));
            catch e
                obj.interpretError(e);
            end
        end

        function ConfigureChannelUserDefinedType(obj,Constant,Value,Type,ChannelList)
            %CONFIGURECHANNELUSERDEFINEDTYPE Configures RTD type to USER and sets the specified constant value for the user defined RTD type.
            
            obj.checkValidObj();
			error(nargchk(5,5,nargin,'struct'))
            Value = obj.checkScalarDoubleArg(Value,'Value');
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                obj.interface.ConfigureChannelUserDefinedType(int32(Constant),double(Value),int32(Type),char(ChannelList));
            catch e
                obj.interpretError(e);
            end
        end

        function ConfigureUserDefinedType(obj,Constant,Value,Type)
            %CONFIGUREUSERDEFINEDTYPE Configures RTD type to USER and sets the specified constant value for the user defined RTD type.
            
            obj.checkValidObj();
			error(nargchk(4,4,nargin,'struct'))
            Value = obj.checkScalarDoubleArg(Value,'Value');
            try
                obj.interface.ConfigureUserDefinedType(int32(Constant),double(Value),int32(Type));
            catch e
                obj.interpretError(e);
            end
        end

        function val = Type(obj,Type,newValue)
            %TYPE Set or queries the RTD type for RTD temperature measurement .
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.Type(int32(Type));
                else
                            obj.interface.Type(int32(Type),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelType(obj,Type,ChannelList,newValue)
            %CHANNELTYPE Set or queries the RTD type for RTD temperature measurement .
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelType(int32(Type),char(ChannelList));
                else
                            obj.interface.ChannelType(int32(Type),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

    end

end
