classdef Digital < instrument.ivicom.Interface
    %DIGITAL IKeithleyDMM6500TriggerDigital interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = Digital(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);
        end
        
        function delete(obj)
        end

    end
    
    %% Public Methods
    methods

        function Clear(obj,InputLine)
            %CLEAR Clears the trigger event on a digital input line.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            InputLine = obj.checkScalarInt32Arg(InputLine,'InputLine');
            try
                obj.interface.Clear(int32(InputLine));
            catch e
                obj.interpretError(e);
            end
        end

        function val = Mode(obj,InputLine,newValue)
            %MODE Sets or queries the mode in which the trigger event detector and the output trigger generator operate on the given trigger line.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            InputLine = obj.checkScalarDoubleArg(InputLine,'InputLine');
            try
                if nargin == 2
                    [val] = obj.interface.Mode(double(InputLine));
                else
                            obj.interface.Mode(double(InputLine),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = OverRunStatus(obj,InputLine)
            %OVERRUNSTATUS Returns the event detector overrun status.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            InputLine = obj.checkScalarInt32Arg(InputLine,'InputLine');
            try
                [val] = obj.interface.OverRunStatus(int32(InputLine));
            catch e
                obj.interpretError(e);
            end
        end

        function val = OutputLogic(obj,InputLine,newValue)
            %OUTPUTLOGIC Sets or queries the output logic of the trigger event generator for the specified line.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            InputLine = obj.checkScalarInt32Arg(InputLine,'InputLine');
            try
                if nargin == 2
                    [val] = obj.interface.OutputLogic(int32(InputLine));
                else
                            obj.interface.OutputLogic(int32(InputLine),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = OutputPulsewidth(obj,InputLine,newValue)
            %OUTPUTPULSEWIDTH Sets or queries the length of time that the trigger line is asserted for output triggers.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            InputLine = obj.checkScalarInt32Arg(InputLine,'InputLine');
            try
                if nargin == 2
                    [val] = obj.interface.OutputPulsewidth(int32(InputLine));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'OutputPulsewidth');
                    obj.interface.OutputPulsewidth(int32(InputLine),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = OutputStimulus(obj,InputLine,newValue)
            %OUTPUTSTIMULUS Sets or queries the event that causes a trigger to be asserted on the digital output line.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            InputLine = obj.checkScalarInt32Arg(InputLine,'InputLine');
            try
                if nargin == 2
                    [val] = obj.interface.OutputStimulus(int32(InputLine));
                else
                    newValue = obj.checkScalarStringArg(newValue,'OutputStimulus');
                    obj.interface.OutputStimulus(int32(InputLine),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

    end

end
