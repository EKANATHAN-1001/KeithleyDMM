classdef LAN < instrument.ivicom.Interface
    %LAN IKeithleyDMM6500TriggerLAN interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = LAN(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);
        end
        
        function delete(obj)
        end

    end
    
    %% Public Methods
    methods

        function Clear(obj,EventNumber)
            %CLEAR Clears the event detector for a trigger.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            EventNumber = obj.checkScalarInt32Arg(EventNumber,'EventNumber');
            try
                obj.interface.Clear(int32(EventNumber));
            catch e
                obj.interpretError(e);
            end
        end

        function val = Mode(obj,EventNumber,newValue)
            %MODE Sets or queries the trigger operation and detection mode of the specified LAN event.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            EventNumber = obj.checkScalarInt32Arg(EventNumber,'EventNumber');
            try
                if nargin == 2
                    [val] = obj.interface.Mode(int32(EventNumber));
                else
                            obj.interface.Mode(int32(EventNumber),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = OverRunStatus(obj,EventNumber)
            %OVERRUNSTATUS Indicates the event detector's overrun status.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            EventNumber = obj.checkScalarInt32Arg(EventNumber,'EventNumber');
            try
                [val] = obj.interface.OverRunStatus(int32(EventNumber));
            catch e
                obj.interpretError(e);
            end
        end

        function val = EventGeneratorState(obj,EventNumber,newValue)
            %EVENTGENERATORSTATE Enable or disable the event generator for outgoing trigger events.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            EventNumber = obj.checkScalarInt32Arg(EventNumber,'EventNumber');
            try
                if nargin == 2
                    [val] = obj.interface.EventGeneratorState(int32(EventNumber));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'EventGeneratorState');
                    obj.interface.EventGeneratorState(int32(EventNumber),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = IPAddress(obj,EventNumber,newValue)
            %IPADDRESS Sets or queries the IP address for outgoing trigger events.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            EventNumber = obj.checkScalarInt32Arg(EventNumber,'EventNumber');
            try
                if nargin == 2
                    [val] = obj.interface.IPAddress(int32(EventNumber));
                else
                    newValue = obj.checkScalarStringArg(newValue,'IPAddress');
                    obj.interface.IPAddress(int32(EventNumber),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = OutLogic(obj,EventNumber,newValue)
            %OUTLOGIC Sets or queries the logic on which the trigger event detector and the output trigger generator operate on the given trigger line.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            EventNumber = obj.checkScalarInt32Arg(EventNumber,'EventNumber');
            try
                if nargin == 2
                    [val] = obj.interface.OutLogic(int32(EventNumber));
                else
                            obj.interface.OutLogic(int32(EventNumber),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = OutProtocol(obj,EventNumber,newValue)
            %OUTPROTOCOL Sets or queries the LAN protocol to use for sending trigger messages.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            EventNumber = obj.checkScalarInt32Arg(EventNumber,'EventNumber');
            try
                if nargin == 2
                    [val] = obj.interface.OutProtocol(int32(EventNumber));
                else
                            obj.interface.OutProtocol(int32(EventNumber),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = OutStimulus(obj,EventNumber,newValue)
            %OUTSTIMULUS Specifies events that cause this trigger to assert.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            EventNumber = obj.checkScalarInt32Arg(EventNumber,'EventNumber');
            try
                if nargin == 2
                    [val] = obj.interface.OutStimulus(int32(EventNumber));
                else
                    newValue = obj.checkScalarStringArg(newValue,'OutStimulus');
                    obj.interface.OutStimulus(int32(EventNumber),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

    end

end
