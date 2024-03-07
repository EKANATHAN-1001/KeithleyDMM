classdef Monitor < instrument.ivicom.Interface
    %MONITOR IKeithleyDMM6500RouteScanMonitor interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = Monitor(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);
        end
        
        function delete(obj)
        end

    end
    
    %% Public Properties
    properties

        %CHANNEL The property defines which channel to monitor for a limit to be reached before starting the scan.
        Channel

        %LOWERLIMIT The property defines the low limit to be used by the scan monitor.
        LowerLimit

        %UPPERLIMIT The property defines the high limit to be used by the scan monitor.
        UpperLimit

        %MODE The property determines if a scan starts immediately when triggered or after measurements reach a set value.
        Mode

    end

    %% Property access methods
    methods

        %% Channel property access methods
        function value = get.Channel(obj)
            obj.checkValidObj();
            try
                value = obj.interface.Channel;
            catch e
                obj.interpretError(e);
            end
        end
		function set.Channel(obj,newValue)
			obj.checkValidObj();
            newValue = obj.checkScalarStringArg(newValue,'Channel');
            try
                obj.interface.Channel = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% LowerLimit property access methods
        function value = get.LowerLimit(obj)
            obj.checkValidObj();
            try
                value = obj.interface.LowerLimit;
            catch e
                obj.interpretError(e);
            end
        end
		function set.LowerLimit(obj,newValue)
			obj.checkValidObj();
            newValue = obj.checkScalarDoubleArg(newValue,'LowerLimit');
            try
                obj.interface.LowerLimit = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% UpperLimit property access methods
        function value = get.UpperLimit(obj)
            obj.checkValidObj();
            try
                value = obj.interface.UpperLimit;
            catch e
                obj.interpretError(e);
            end
        end
		function set.UpperLimit(obj,newValue)
			obj.checkValidObj();
            newValue = obj.checkScalarDoubleArg(newValue,'UpperLimit');
            try
                obj.interface.UpperLimit = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% Mode property access methods
        function value = get.Mode(obj)
            obj.checkValidObj();
            try
                value = obj.interface.Mode;
            catch e
                obj.interpretError(e);
            end
        end
		function set.Mode(obj,newValue)
			obj.checkValidObj();
            try
                obj.interface.Mode = newValue;
            catch e
                obj.interpretError(e);
            end
        end

    end

end
