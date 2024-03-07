classdef Digital < instrument.ivicom.Interface
    %DIGITAL IKeithleyDMM6500Digital interface.
    
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

        function ConfigureLineMode(obj,LineNumber,TriggerType,LineState)
            %CONFIGURELINEMODE Sets the digital I/O line to be a digital line or trigger model line and sets the line as an input or output.
            
            obj.checkValidObj();
			error(nargchk(4,4,nargin,'struct'))
            LineNumber = obj.checkScalarInt32Arg(LineNumber,'LineNumber');
            try
                obj.interface.ConfigureLineMode(int32(LineNumber),int32(TriggerType),int32(LineState));
            catch e
                obj.interpretError(e);
            end
        end

        function val = Read(obj)
            %READ Reads the digital I/O port.
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            try
                [val] = obj.interface.Read();
            catch e
                obj.interpretError(e);
            end
        end

        function Write(obj,Value)
            %WRITE Writes to all digital I/O lines.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            Value = obj.checkScalarInt32Arg(Value,'Value');
            try
                obj.interface.Write(int32(Value));
            catch e
                obj.interpretError(e);
            end
        end

        function [returnTriggerType,returnLineState] = ReadLineMode(obj,LineNumber)
            %READLINEMODE Returns the digital I/O line configuration type and line state.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            LineNumber = obj.checkScalarInt32Arg(LineNumber,'LineNumber');
            try
                [returnTriggerType,returnLineState] = obj.interface.ReadLineMode(int32(LineNumber),int32(0),int32(0));
            catch e
                obj.interpretError(e);
            end
        end

        function val = LineState(obj,LineNumber,newValue)
            %LINESTATE Sets or queries a digital I/O line state(high or low). Here 0 means Bit low and 1 means Bit high.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            LineNumber = obj.checkScalarInt32Arg(LineNumber,'LineNumber');
            try
                if nargin == 2
                    [val] = obj.interface.LineState(int32(LineNumber));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'LineState');
                    obj.interface.LineState(int32(LineNumber),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

    end

end
