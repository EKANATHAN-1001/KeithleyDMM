classdef External < instrument.ivicom.Interface
    %EXTERNAL IKeithleyDMM6500TriggerExternal interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = External(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);
        end
        
        function delete(obj)
        end

    end
    
    %% Public Properties
    properties

        %MODE Sets or queries the mode in which the trigger event detector and the output trigger generator operate on the EXTernal trigger line.
        Mode

        %OUTPUTLOGIC Sets or queries the output logic of the trigger event generator for the EXTernal line.
        OutputLogic

        %OUTPUTSTIMULUS Sets or queries the event that causes a trigger to be asserted on the EXTernal output line.
        OutputStimulus

    end

    %% Public Read Only Properties
    properties (SetAccess = private)

        %OVERRUNSTATUS Returns the event detector overrun status. Read Only.
        OverRunStatus

    end

    %% Property access methods
    methods

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

        %% OutputLogic property access methods
        function value = get.OutputLogic(obj)
            obj.checkValidObj();
            try
                value = obj.interface.OutputLogic;
            catch e
                obj.interpretError(e);
            end
        end
		function set.OutputLogic(obj,newValue)
			obj.checkValidObj();
            try
                obj.interface.OutputLogic = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% OutputStimulus property access methods
        function value = get.OutputStimulus(obj)
            obj.checkValidObj();
            try
                value = obj.interface.OutputStimulus;
            catch e
                obj.interpretError(e);
            end
        end
		function set.OutputStimulus(obj,newValue)
			obj.checkValidObj();
            newValue = obj.checkScalarStringArg(newValue,'OutputStimulus');
            try
                obj.interface.OutputStimulus = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% OverRunStatus property access methods
        function value = get.OverRunStatus(obj)
            obj.checkValidObj();
            try
                value = obj.interface.OverRunStatus;
            catch e
                obj.interpretError(e);
            end
        end

    end

    %% Public Methods
    methods

        function Clear(obj)
            %CLEAR Clears the trigger event on a external input line.
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            try
                obj.interface.Clear();
            catch e
                obj.interpretError(e);
            end
        end

    end

end
