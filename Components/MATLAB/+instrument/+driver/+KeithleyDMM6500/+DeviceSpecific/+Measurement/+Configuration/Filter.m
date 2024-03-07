classdef Filter < instrument.ivicom.Interface
    %FILTER IKeithleyDMM6500MeasurementConfigurationFilter interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = Filter(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);
        end
        
        function delete(obj)
        end

    end
    
    %% Public Methods
    methods

        function val = Count(obj,Function,newValue)
            %COUNT Sets or queries the number of measurements that are averaged when filtering is enabled for the function measurements.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.Count(int32(Function));
                else
                    newValue = obj.checkScalarInt32Arg(newValue,'Count');
                    obj.interface.Count(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = State(obj,Function,newValue)
            %STATE Enables or disables the averaging filter for measurements of the selected function.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.State(int32(Function));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'State');
                    obj.interface.State(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = Type(obj,Function,newValue)
            %TYPE Sets or queries the type of averaging filter that is used for measurements for the selected function when the measurement filter is enabled.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.Type(int32(Function));
                else
                            obj.interface.Type(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = Window(obj,Function,newValue)
            %WINDOW Sets or queries the window value of averaging filter that is used for measurements for the selected function when the measurement filter is enabled.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.Window(int32(Function));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'Window');
                    obj.interface.Window(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelCount(obj,Function,ChannelList,newValue)
            %CHANNELCOUNT Sets or queries the number of measurements that are averaged when filtering is enabled for the function measurements.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelCount(int32(Function),char(ChannelList));
                else
                    newValue = obj.checkScalarInt32Arg(newValue,'ChannelCount');
                    obj.interface.ChannelCount(int32(Function),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelState(obj,Function,ChannelList,newValue)
            %CHANNELSTATE Enables or disables the averaging filter for measurements of the selected function.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelState(int32(Function),char(ChannelList));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'ChannelState');
                    obj.interface.ChannelState(int32(Function),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelType(obj,Function,ChannelList,newValue)
            %CHANNELTYPE Sets or queries the type of averaging filter that is used for measurements for the selected function when the measurement filter is enabled.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelType(int32(Function),char(ChannelList));
                else
                            obj.interface.ChannelType(int32(Function),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelWindow(obj,Function,ChannelList,newValue)
            %CHANNELWINDOW Sets or queries the window value of averaging filter that is used for measurements for the selected function when the measurement filter is enabled.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelWindow(int32(Function),char(ChannelList));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'ChannelWindow');
                    obj.interface.ChannelWindow(int32(Function),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

    end

end
