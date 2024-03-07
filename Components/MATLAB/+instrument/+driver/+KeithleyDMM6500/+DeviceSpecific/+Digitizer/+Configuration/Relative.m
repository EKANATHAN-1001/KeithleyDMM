classdef Relative < instrument.ivicom.Interface
    %RELATIVE IKeithleyDMM6500DigitizerConfigurationRelative interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = Relative(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);
        end
        
        function delete(obj)
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

        function val = RelativeOffset(obj,Function,newValue)
            %RELATIVEOFFSET Sets or queries the relative offset value for the measurement.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.RelativeOffset(int32(Function));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'RelativeOffset');
                    obj.interface.RelativeOffset(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = RelativeOffsetState(obj,Function,newValue)
            %RELATIVEOFFSETSTATE Enables or disables the null relative offset value.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.RelativeOffsetState(int32(Function));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'RelativeOffsetState');
                    obj.interface.RelativeOffsetState(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelRelativeOffset(obj,Function,ChannelList,newValue)
            %CHANNELRELATIVEOFFSET Sets or queries the relative offset value for the measurement.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelRelativeOffset(int32(Function),char(ChannelList));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'ChannelRelativeOffset');
                    obj.interface.ChannelRelativeOffset(int32(Function),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelRelativeOffsetState(obj,Function,ChannelList,newValue)
            %CHANNELRELATIVEOFFSETSTATE Enables or disables the null relative offset value.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelRelativeOffsetState(int32(Function),char(ChannelList));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'ChannelRelativeOffsetState');
                    obj.interface.ChannelRelativeOffsetState(int32(Function),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

    end

end
