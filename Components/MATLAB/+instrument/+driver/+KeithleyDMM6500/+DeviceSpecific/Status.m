classdef Status < instrument.ivicom.Interface
    %STATUS IKeithleyDMM6500Status interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = Status(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);
        end
        
        function delete(obj)
        end

    end
    
    %% Public Properties
    properties

        %ENABLEQUESTIONABLEEVENTREGISTER Sets or queries the contents of the Enable register of the Questionable Event Register.
        EnableQuestionableEventRegister

        %ENABLEOPERATIONEVENTREGISTER Sets or queries the contents of the Enable register of the Operation Event Register..
        EnableOperationEventRegister

    end

    %% Property access methods
    methods

        %% EnableQuestionableEventRegister property access methods
        function value = get.EnableQuestionableEventRegister(obj)
            obj.checkValidObj();
            try
                value = obj.interface.EnableQuestionableEventRegister;
            catch e
                obj.interpretError(e);
            end
        end
		function set.EnableQuestionableEventRegister(obj,newValue)
			obj.checkValidObj();
            newValue = obj.checkScalarInt32Arg(newValue,'EnableQuestionableEventRegister');
            try
                obj.interface.EnableQuestionableEventRegister = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% EnableOperationEventRegister property access methods
        function value = get.EnableOperationEventRegister(obj)
            obj.checkValidObj();
            try
                value = obj.interface.EnableOperationEventRegister;
            catch e
                obj.interpretError(e);
            end
        end
		function set.EnableOperationEventRegister(obj,newValue)
			obj.checkValidObj();
            newValue = obj.checkScalarInt32Arg(newValue,'EnableOperationEventRegister');
            try
                obj.interface.EnableOperationEventRegister = newValue;
            catch e
                obj.interpretError(e);
            end
        end

    end

    %% Public Methods
    methods

        function val = ReadOperationCondition(obj)
            %READOPERATIONCONDITION Reads the contents of the Operation Condition Register, which is one of the Operation Event Registers.
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            try
                [val] = obj.interface.ReadOperationCondition();
            catch e
                obj.interpretError(e);
            end
        end

        function MapEventIDToBitNumberInOERegister(obj,BitNumber,SetEvent,ClearEvent)
            %MAPEVENTIDTOBITNUMBERINOEREGISTER Map event IDs to bits in the Operation Event Registers.
            
            obj.checkValidObj();
			error(nargchk(4,4,nargin,'struct'))
            BitNumber = obj.checkScalarInt32Arg(BitNumber,'BitNumber');
            SetEvent = obj.checkScalarInt32Arg(SetEvent,'SetEvent');
            ClearEvent = obj.checkScalarInt32Arg(ClearEvent,'ClearEvent');
            try
                obj.interface.MapEventIDToBitNumberInOERegister(int32(BitNumber),int32(SetEvent),int32(ClearEvent));
            catch e
                obj.interpretError(e);
            end
        end

        function [returnSetEvent,returnClearEvent] = ReadOperationEventRegisterMap(obj,BitNumber)
            %READOPERATIONEVENTREGISTERMAP Queries the mapped set event and mapped clear event status for a bit in the Operation Event Registers. When you query the mapping for a specific bit, the instrument returns the events that were mapped to set and clear that bit. Zero (0) indicates that the bits have not been set.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            BitNumber = obj.checkScalarInt32Arg(BitNumber,'BitNumber');
            try
                [returnSetEvent,returnClearEvent] = obj.interface.ReadOperationEventRegisterMap(int32(BitNumber),int32(0),int32(0));
            catch e
                obj.interpretError(e);
            end
        end

        function Preset(obj)
            %PRESET Returns registers to default conditions.
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            try
                obj.interface.Preset();
            catch e
                obj.interpretError(e);
            end
        end

        function val = ReadQuestionableCondition(obj)
            %READQUESTIONABLECONDITION Reads the Questionable Condition Register of the status model.
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            try
                [val] = obj.interface.ReadQuestionableCondition();
            catch e
                obj.interpretError(e);
            end
        end

        function MapEventIDToBitNumberInQERegister(obj,BitNumber,SetEvent,ClearEvent)
            %MAPEVENTIDTOBITNUMBERINQEREGISTER Maps event IDs to bits in the Questionable event registers.
            
            obj.checkValidObj();
			error(nargchk(4,4,nargin,'struct'))
            BitNumber = obj.checkScalarInt32Arg(BitNumber,'BitNumber');
            SetEvent = obj.checkScalarInt32Arg(SetEvent,'SetEvent');
            ClearEvent = obj.checkScalarInt32Arg(ClearEvent,'ClearEvent');
            try
                obj.interface.MapEventIDToBitNumberInQERegister(int32(BitNumber),int32(SetEvent),int32(ClearEvent));
            catch e
                obj.interpretError(e);
            end
        end

        function [returnSetEvent,returnClearEvent] = ReadQuestionableEventRegisterMap(obj,BitNumber)
            %READQUESTIONABLEEVENTREGISTERMAP Queries mapped event IDs to bits in the Questionable event register.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            BitNumber = obj.checkScalarInt32Arg(BitNumber,'BitNumber');
            try
                [returnSetEvent,returnClearEvent] = obj.interface.ReadQuestionableEventRegisterMap(int32(BitNumber),int32(0),int32(0));
            catch e
                obj.interpretError(e);
            end
        end

        function val = ReadOperationEventRegister(obj)
            %READOPERATIONEVENTREGISTER Reads the Operation Event Register of the status model.
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            try
                [val] = obj.interface.ReadOperationEventRegister();
            catch e
                obj.interpretError(e);
            end
        end

        function val = ReadQuestionableEventRegister(obj)
            %READQUESTIONABLEEVENTREGISTER Reads the Questionable Event Register.
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            try
                [val] = obj.interface.ReadQuestionableEventRegister();
            catch e
                obj.interpretError(e);
            end
        end

        function Clear(obj)
            %CLEAR This function clears the event registers of the Questionable Event and Operation Event Registerset. It does not affect the Questionable Event Enable or Operation Event Enable registers.It also clears the event log.
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            try
                obj.interface.Clear();
            catch e
                obj.interpretError(e);
            end
        end

        function val = ReadSTB(obj)
            %READSTB Return the status byte value.
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            try
                [val] = obj.interface.ReadSTB();
            catch e
                obj.interpretError(e);
            end
        end

        function val = WaitForSRQ(obj,Timeout)
            %WAITFORSRQ Clears the Status registers and enables service request events, sends OPC and waits for the SRQ for the specified time.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            Timeout = obj.checkScalarInt32Arg(Timeout,'Timeout');
            try
                [val] = obj.interface.WaitForSRQ(int32(Timeout));
            catch e
                obj.interpretError(e);
            end
        end

    end

end
