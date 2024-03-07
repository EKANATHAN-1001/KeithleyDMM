classdef AnalogTrigger < instrument.ivicom.Interface
    %ANALOGTRIGGER IKeithleyDMM6500DigitizerConfigurationAnalogTrigger interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = AnalogTrigger(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);
        end
        
        function delete(obj)
        end

    end
    
    %% Public Methods
    methods

        function val = EdgeLevel(obj,Function,newValue)
            %EDGELEVEL This property describes the analog trigger edge level.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.EdgeLevel(int32(Function));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'EdgeLevel');
                    obj.interface.EdgeLevel(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = EdgeSlope(obj,Function,newValue)
            %EDGESLOPE This property defines the slope of the analog trigger edge.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.EdgeSlope(int32(Function));
                else
                            obj.interface.EdgeSlope(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = Mode(obj,Function,newValue)
            %MODE This property describes the mode of the analog trigger.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.Mode(int32(Function));
                else
                            obj.interface.Mode(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = WindowDirection(obj,Function,newValue)
            %WINDOWDIRECTION This property defines the window direction of the analog trigger edge.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.WindowDirection(int32(Function));
                else
                            obj.interface.WindowDirection(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = WindowLevelHigh(obj,Function,newValue)
            %WINDOWLEVELHIGH This property defines the window level high of the analog trigger edge.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.WindowLevelHigh(int32(Function));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'WindowLevelHigh');
                    obj.interface.WindowLevelHigh(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = WindowLevelLow(obj,Function,newValue)
            %WINDOWLEVELLOW This property defines the window level low of the analog trigger edge.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.WindowLevelLow(int32(Function));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'WindowLevelLow');
                    obj.interface.WindowLevelLow(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

    end

end
