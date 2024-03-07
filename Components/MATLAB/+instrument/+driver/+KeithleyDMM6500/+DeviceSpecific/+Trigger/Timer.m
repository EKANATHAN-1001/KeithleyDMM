classdef Timer < instrument.ivicom.Interface
    %TIMER IKeithleyDMM6500TriggerTimer interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = Timer(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);
        end
        
        function delete(obj)
        end

    end
    
    %% Public Methods
    methods

        function Clear(obj,TimerNumber)
            %CLEAR Clears the timer event detector and overrun indicator for the specified trigger timer number.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            TimerNumber = obj.checkScalarInt32Arg(TimerNumber,'TimerNumber');
            try
                obj.interface.Clear(int32(TimerNumber));
            catch e
                obj.interpretError(e);
            end
        end

        function val = EventCount(obj,TimerNumber,newValue)
            %EVENTCOUNT Sets or queries the number of events to generate each time the timer generates a trigger event.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            TimerNumber = obj.checkScalarInt32Arg(TimerNumber,'TimerNumber');
            try
                if nargin == 2
                    [val] = obj.interface.EventCount(int32(TimerNumber));
                else
                    newValue = obj.checkScalarInt32Arg(newValue,'EventCount');
                    obj.interface.EventCount(int32(TimerNumber),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = Delay(obj,TimerNumber,newValue)
            %DELAY Sets or queries the timer delay. Each time the timer is triggered, it uses this delay period.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            TimerNumber = obj.checkScalarInt32Arg(TimerNumber,'TimerNumber');
            try
                if nargin == 2
                    [val] = obj.interface.Delay(int32(TimerNumber));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'Delay');
                    obj.interface.Delay(int32(TimerNumber),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = IsTimerOverRun(obj,TimerNumber)
            %ISTIMEROVERRUN Indicates if an event was ignored because of the event detector state.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            TimerNumber = obj.checkScalarInt32Arg(TimerNumber,'TimerNumber');
            try
                [val] = obj.interface.IsTimerOverRun(int32(TimerNumber));
            catch e
                obj.interpretError(e);
            end
        end

        function val = GenerateEventIDState(obj,TimerNumber,newValue)
            %GENERATEEVENTIDSTATE Specifies when timer event IDs are generated.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            TimerNumber = obj.checkScalarInt32Arg(TimerNumber,'TimerNumber');
            try
                if nargin == 2
                    [val] = obj.interface.GenerateEventIDState(int32(TimerNumber));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'GenerateEventIDState');
                    obj.interface.GenerateEventIDState(int32(TimerNumber),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = State(obj,TimerNumber,newValue)
            %STATE Enables or Disables the trigger timer.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            TimerNumber = obj.checkScalarInt32Arg(TimerNumber,'TimerNumber');
            try
                if nargin == 2
                    [val] = obj.interface.State(int32(TimerNumber));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'State');
                    obj.interface.State(int32(TimerNumber),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = StartStimulus(obj,TimerNumber,newValue)
            %STARTSTIMULUS It describes the event ID that will start the trigger timer.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            TimerNumber = obj.checkScalarInt32Arg(TimerNumber,'TimerNumber');
            try
                if nargin == 2
                    [val] = obj.interface.StartStimulus(int32(TimerNumber));
                else
                    newValue = obj.checkScalarStringArg(newValue,'StartStimulus');
                    obj.interface.StartStimulus(int32(TimerNumber),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = StartFractional(obj,TimerNumber,newValue)
            %STARTFRACTIONAL Configures an alarm or a time in the future when the timer will start.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            TimerNumber = obj.checkScalarInt32Arg(TimerNumber,'TimerNumber');
            try
                if nargin == 2
                    [val] = obj.interface.StartFractional(int32(TimerNumber));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'StartFractional');
                    obj.interface.StartFractional(int32(TimerNumber),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = StartSeconds(obj,TimerNumber,newValue)
            %STARTSECONDS Configures an alarm or a time in the future when the timer will start.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            TimerNumber = obj.checkScalarInt32Arg(TimerNumber,'TimerNumber');
            try
                if nargin == 2
                    [val] = obj.interface.StartSeconds(int32(TimerNumber));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'StartSeconds');
                    obj.interface.StartSeconds(int32(TimerNumber),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

    end

end
