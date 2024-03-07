classdef Block < instrument.ivicom.Interface
    %BLOCK IKeithleyDMM6500TriggerBlock interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = Block(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);

            %% Initialize properties
            try
                obj.Branch = instrument.driver.KeithleyDMM6500.DeviceSpecific.Trigger.Model.Block.Branch(obj.interface.Branch);
            catch %#ok<CTCH>
            end

        end
        
        function delete(obj)
            obj.Branch = [];
        end

    end
    
    %% Public Read Only Properties
    properties (SetAccess = private)

        %QUERYLIST Returns the settings for all trigger model building blocks. Read Only.
        QueryList

        %BRANCH Pointer to the IKeithleyDMM6500TriggerModelBlockBranch interface. Read Only.
        Branch

    end

    %% Property access methods
    methods

        %% QueryList property access methods
        function value = get.QueryList(obj)
            obj.checkValidObj();
            try
                value = obj.interface.QueryList;
            catch e
                obj.interpretError(e);
            end
        end

        %% Branch property access methods
        function value = get.Branch(obj)
            obj.checkValidObj();
            if isempty(obj.Branch)
                try
                    obj.Branch = instrument.driver.KeithleyDMM6500.DeviceSpecific.Trigger.Model.Block.Branch(obj.interface.Branch);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Branch;
        end

    end

    %% Public Methods
    methods

        function BufferClear(obj,BlockNumber,BufferName)
            %BUFFERCLEAR Defines a trigger model block that clears the reading buffer.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            BlockNumber = obj.checkScalarInt32Arg(BlockNumber,'BlockNumber');
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            try
                obj.interface.BufferClear(int32(BlockNumber),char(BufferName));
            catch e
                obj.interpretError(e);
            end
        end

        function RecallConfigurationNext(obj,BlockNumber,ConfigurationList)
            %RECALLCONFIGURATIONNEXT Recalls the settings at the next index point of a configuration list.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            BlockNumber = obj.checkScalarInt32Arg(BlockNumber,'BlockNumber');
            ConfigurationList = obj.checkScalarStringArg(ConfigurationList,'ConfigurationList');
            try
                obj.interface.RecallConfigurationNext(int32(BlockNumber),char(ConfigurationList));
            catch e
                obj.interpretError(e);
            end
        end

        function RecallConfigurationPrevious(obj,BlockNumber,ConfigurationList)
            %RECALLCONFIGURATIONPREVIOUS Defines a trigger model block that loads the commands stored at the previous index point in a configuration list.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            BlockNumber = obj.checkScalarInt32Arg(BlockNumber,'BlockNumber');
            ConfigurationList = obj.checkScalarStringArg(ConfigurationList,'ConfigurationList');
            try
                obj.interface.RecallConfigurationPrevious(int32(BlockNumber),char(ConfigurationList));
            catch e
                obj.interpretError(e);
            end
        end

        function RecallConfiguration(obj,BlockNumber,ConfigurationList,Point)
            %RECALLCONFIGURATION Recalls the system settings that are stored in a configuration list.
            
            obj.checkValidObj();
			error(nargchk(4,4,nargin,'struct'))
            BlockNumber = obj.checkScalarInt32Arg(BlockNumber,'BlockNumber');
            ConfigurationList = obj.checkScalarStringArg(ConfigurationList,'ConfigurationList');
            Point = obj.checkScalarInt32Arg(Point,'Point');
            try
                obj.interface.RecallConfiguration(int32(BlockNumber),char(ConfigurationList),int32(Point));
            catch e
                obj.interpretError(e);
            end
        end

        function ConstantDelay(obj,BlockNumber,Time)
            %CONSTANTDELAY Adds a constant delay to the trigger model.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            BlockNumber = obj.checkScalarInt32Arg(BlockNumber,'BlockNumber');
            Time = obj.checkScalarDoubleArg(Time,'Time');
            try
                obj.interface.ConstantDelay(int32(BlockNumber),double(Time));
            catch e
                obj.interpretError(e);
            end
        end

        function DelayDynamic(obj,BlockNumber,UserDelayType,UserDelayNumber)
            %DELAYDYNAMIC Adds a delay to the execution of the trigger model.
            
            obj.checkValidObj();
			error(nargchk(4,4,nargin,'struct'))
            BlockNumber = obj.checkScalarInt32Arg(BlockNumber,'BlockNumber');
            UserDelayNumber = obj.checkScalarInt32Arg(UserDelayNumber,'UserDelayNumber');
            try
                obj.interface.DelayDynamic(int32(BlockNumber),int32(UserDelayType),int32(UserDelayNumber));
            catch e
                obj.interpretError(e);
            end
        end

        function ConfigureDigitalIO(obj,BlockNumber,BitPattern,BitMask)
            %CONFIGUREDIGITALIO Configures a trigger model block that sets the lines on the digital I/O port high or low.
            
            obj.checkValidObj();
			error(nargchk(4,4,nargin,'struct'))
            BlockNumber = obj.checkScalarInt32Arg(BlockNumber,'BlockNumber');
            BitPattern = obj.checkScalarInt32Arg(BitPattern,'BitPattern');
            BitMask = obj.checkScalarInt32Arg(BitMask,'BitMask');
            try
                obj.interface.ConfigureDigitalIO(int32(BlockNumber),int32(BitPattern),int32(BitMask));
            catch e
                obj.interpretError(e);
            end
        end

        function Measure(obj,BlockNumber,BufferName)
            %MEASURE Defines a trigger block that makes a measurement.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            BlockNumber = obj.checkScalarInt32Arg(BlockNumber,'BlockNumber');
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            try
                obj.interface.Measure(int32(BlockNumber),char(BufferName));
            catch e
                obj.interpretError(e);
            end
        end

        function Notify(obj,BlockNumber,NotifyID)
            %NOTIFY Defines a trigger model block that generates a trigger event and immediately continues to the next block.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            BlockNumber = obj.checkScalarInt32Arg(BlockNumber,'BlockNumber');
            NotifyID = obj.checkScalarInt32Arg(NotifyID,'NotifyID');
            try
                obj.interface.Notify(int32(BlockNumber),int32(NotifyID));
            catch e
                obj.interpretError(e);
            end
        end

        function Wait(obj,BlockNumber,Event1,StimulusAction,Logic,Event2,Event3)
            %WAIT Defines a trigger model block that waits for an event before allowing the trigger model to continue.
            
            obj.checkValidObj();
			error(nargchk(7,7,nargin,'struct'))
            BlockNumber = obj.checkScalarInt32Arg(BlockNumber,'BlockNumber');
            Event1 = obj.checkScalarStringArg(Event1,'Event1');
            Event2 = obj.checkScalarStringArg(Event2,'Event2');
            Event3 = obj.checkScalarStringArg(Event3,'Event3');
            try
                obj.interface.Wait(int32(BlockNumber),char(Event1),int32(StimulusAction),int32(Logic),char(Event2),char(Event3));
            catch e
                obj.interpretError(e);
            end
        end

        function LogEvent(obj,BlockNumber,Event,Message)
            %LOGEVENT Logs an event during trigger model execution.
            
            obj.checkValidObj();
			error(nargchk(4,4,nargin,'struct'))
            BlockNumber = obj.checkScalarInt32Arg(BlockNumber,'BlockNumber');
            Event = obj.checkScalarStringArg(Event,'Event');
            Message = obj.checkScalarStringArg(Message,'Message');
            try
                obj.interface.LogEvent(int32(BlockNumber),char(Event),char(Message));
            catch e
                obj.interpretError(e);
            end
        end

        function NoOperation(obj,BlockNumber)
            %NOOPERATION Creates a placeholder that performs no action in the trigger model.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            BlockNumber = obj.checkScalarInt32Arg(BlockNumber,'BlockNumber');
            try
                obj.interface.NoOperation(int32(BlockNumber));
            catch e
                obj.interpretError(e);
            end
        end

    end

end
