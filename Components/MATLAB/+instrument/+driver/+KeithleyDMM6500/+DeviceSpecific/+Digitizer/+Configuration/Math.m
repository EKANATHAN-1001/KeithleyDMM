classdef Math < instrument.ivicom.Interface
    %MATH IKeithleyDMM6500MeasurementMath interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = Math(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);
        end
        
        function delete(obj)
        end

    end
    
    %% Public Methods
    methods

        function val = Operation(obj,Function,newValue)
            %OPERATION Specifies which math operation is performed on measurements.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.Operation(int32(Function));
                else
                            obj.interface.Operation(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = OffsetFactor(obj,Function,newValue)
            %OFFSETFACTOR Sets or queries the offset for the y=mx + b operation.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.OffsetFactor(int32(Function));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'OffsetFactor');
                    obj.interface.OffsetFactor(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ScaleFactor(obj,Function,newValue)
            %SCALEFACTOR Sets or queries the scale factor (m) for an mx + b operation.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.ScaleFactor(int32(Function));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'ScaleFactor');
                    obj.interface.ScaleFactor(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = Percentage(obj,Function,newValue)
            %PERCENTAGE Sets or queries the constant that is used when math operations are set to percent.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.Percentage(int32(Function));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'Percentage');
                    obj.interface.Percentage(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = OperationState(obj,Function,newValue)
            %OPERATIONSTATE Enables or disables the math operation.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.OperationState(int32(Function));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'OperationState');
                    obj.interface.OperationState(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelOffsetFactor(obj,Function,ChannelList,newValue)
            %CHANNELOFFSETFACTOR Sets or queries the offset for the y=mx + b operation.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelOffsetFactor(int32(Function),char(ChannelList));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'ChannelOffsetFactor');
                    obj.interface.ChannelOffsetFactor(int32(Function),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelOperation(obj,Function,ChannelList,newValue)
            %CHANNELOPERATION Specifies which math operation is performed on measurements.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelOperation(int32(Function),char(ChannelList));
                else
                            obj.interface.ChannelOperation(int32(Function),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelOperationState(obj,Function,ChannelList,newValue)
            %CHANNELOPERATIONSTATE Enables or disables the math operation.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelOperationState(int32(Function),char(ChannelList));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'ChannelOperationState');
                    obj.interface.ChannelOperationState(int32(Function),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelPercentage(obj,Function,ChannelList,newValue)
            %CHANNELPERCENTAGE Sets or queries the constant that is used when math operations are set to percent.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelPercentage(int32(Function),char(ChannelList));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'ChannelPercentage');
                    obj.interface.ChannelPercentage(int32(Function),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelScaleFactor(obj,Function,ChannelList,newValue)
            %CHANNELSCALEFACTOR Sets or queries the scale factor (m) for an mx + b operation.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 3
                    [val] = obj.interface.ChannelScaleFactor(int32(Function),char(ChannelList));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'ChannelScaleFactor');
                    obj.interface.ChannelScaleFactor(int32(Function),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

    end

end
