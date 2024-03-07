classdef Model < instrument.ivicom.Interface
    %MODEL IKeithleyDMM6500TriggerModel interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = Model(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);

            %% Initialize properties
            try
                obj.Block = instrument.driver.KeithleyDMM6500.DeviceSpecific.Trigger.Model.Block(obj.interface.Block);
            catch %#ok<CTCH>
            end

        end
        
        function delete(obj)
            obj.Block = [];
        end

    end
    
    %% Public Read Only Properties
    properties (SetAccess = private)

        %STATE Returns the present state of the trigger model and the block that the trigger model is presently executing. Read Only.
        State

        %BLOCK Pointer to the IKeithleyDMM6500TriggerBlock interface. Read Only.
        Block

    end

    %% Property access methods
    methods

        %% State property access methods
        function value = get.State(obj)
            obj.checkValidObj();
            try
                value = obj.interface.State;
            catch e
                obj.interpretError(e);
            end
        end

        %% Block property access methods
        function value = get.Block(obj)
            obj.checkValidObj();
            if isempty(obj.Block)
                try
                    obj.Block = instrument.driver.KeithleyDMM6500.DeviceSpecific.Trigger.Model.Block(obj.interface.Block);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Block;
        end

    end

    %% Public Methods
    methods

        function LoadExternalDigitalIO(obj,DigitalInLine,DigitalOutLine,Count,Delay,ReadingBuffer,ReadingBlock)
            %LOADEXTERNALDIGITALIO Loads a predefined trigger model configuration.This trigger model waits for a digital I/O event to occurs, makes a measurement, and issues a notify event.
            
            obj.checkValidObj();
			error(nargchk(7,7,nargin,'struct'))
            DigitalInLine = obj.checkScalarInt32Arg(DigitalInLine,'DigitalInLine');
            DigitalOutLine = obj.checkScalarInt32Arg(DigitalOutLine,'DigitalOutLine');
            Count = obj.checkScalarInt32Arg(Count,'Count');
            Delay = obj.checkScalarDoubleArg(Delay,'Delay');
            ReadingBuffer = obj.checkScalarStringArg(ReadingBuffer,'ReadingBuffer');
            try
                obj.interface.LoadExternalDigitalIO(int32(DigitalInLine),int32(DigitalOutLine),int32(Count),double(Delay),char(ReadingBuffer),int32(ReadingBlock));
            catch e
                obj.interpretError(e);
            end
        end

        function LoadConfigList(obj,MeasureConfigList,Delay,ReadingBuffer,ReadingBlock)
            %LOADCONFIGLIST Loads a predefined trigger model configuration that uses source and measure configuration lists.
            
            obj.checkValidObj();
			error(nargchk(5,5,nargin,'struct'))
            MeasureConfigList = obj.checkScalarStringArg(MeasureConfigList,'MeasureConfigList');
            Delay = obj.checkScalarDoubleArg(Delay,'Delay');
            ReadingBuffer = obj.checkScalarStringArg(ReadingBuffer,'ReadingBuffer');
            try
                obj.interface.LoadConfigList(char(MeasureConfigList),double(Delay),char(ReadingBuffer),int32(ReadingBlock));
            catch e
                obj.interpretError(e);
            end
        end

        function LoadDurationLoop(obj,Duration,Delay,ReadingBuffer,ReadingBlock)
            %LOADDURATIONLOOP Loads a predefined trigger model configuration.
            
            obj.checkValidObj();
			error(nargchk(5,5,nargin,'struct'))
            Duration = obj.checkScalarDoubleArg(Duration,'Duration');
            Delay = obj.checkScalarDoubleArg(Delay,'Delay');
            ReadingBuffer = obj.checkScalarStringArg(ReadingBuffer,'ReadingBuffer');
            try
                obj.interface.LoadDurationLoop(double(Duration),double(Delay),char(ReadingBuffer),int32(ReadingBlock));
            catch e
                obj.interpretError(e);
            end
        end

        function LoadSimpleLoop(obj,Count,Delay,ReadingBuffer,ReadingBlock)
            %LOADSIMPLELOOP Loads a predefined trigger model configuration. This trigger model sets up a loop that sets a delay, makes a measurement, and then repeats the loop the number of times you defined in the count parameter.
            
            obj.checkValidObj();
			error(nargchk(5,5,nargin,'struct'))
            Count = obj.checkScalarInt32Arg(Count,'Count');
            Delay = obj.checkScalarDoubleArg(Delay,'Delay');
            ReadingBuffer = obj.checkScalarStringArg(ReadingBuffer,'ReadingBuffer');
            try
                obj.interface.LoadSimpleLoop(int32(Count),double(Delay),char(ReadingBuffer),int32(ReadingBlock));
            catch e
                obj.interpretError(e);
            end
        end

        function Reset(obj)
            %RESET Resets the trigger model.
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            try
                obj.interface.Reset();
            catch e
                obj.interpretError(e);
            end
        end

        function LoadGradeBinning(obj,Components,StartInLine,StartDelay,EndDelay,BufferName,AllPassBitPattern,LimitHigh,LimitLow,FailBitPattern)
            %LOADGRADEBINNING This method loads a predefined trigger model configuration that sets up a grading operation.
            
            obj.checkValidObj();
			error(nargchk(10,10,nargin,'struct'))
            Components = obj.checkScalarInt32Arg(Components,'Components');
            StartDelay = obj.checkScalarDoubleArg(StartDelay,'StartDelay');
            EndDelay = obj.checkScalarDoubleArg(EndDelay,'EndDelay');
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            AllPassBitPattern = obj.checkScalarInt16Arg(AllPassBitPattern,'AllPassBitPattern');
            LimitHigh = obj.checkVectorDoubleArg(LimitHigh,'LimitHigh');
            LimitLow = obj.checkVectorDoubleArg(LimitLow,'LimitLow');
            FailBitPattern = obj.checkVectorInt16Arg(FailBitPattern,'FailBitPattern');
            singleDimFlag = feature('COM_SafeArraySingleDim');
            try
                feature('COM_SafeArraySingleDim',1);
                obj.interface.LoadGradeBinning(int32(Components),int32(StartInLine),double(StartDelay),double(EndDelay),char(BufferName),int16(AllPassBitPattern),double(LimitHigh),double(LimitLow),int16(FailBitPattern));
            catch e
                feature('COM_SafeArraySingleDim',singleDimFlag);
                obj.interpretError(e);
            end
            feature('COM_SafeArraySingleDim',singleDimFlag);
        end

        function LoadLoopUntilEvent(obj,EventSource,Position,Delay,BufferName,ReadingBlock)
            %LOADLOOPUNTILEVENT This method loads a predefined trigger model configuration that makes continuous measurements until the specified event occurs.
            
            obj.checkValidObj();
			error(nargchk(6,6,nargin,'struct'))
            EventSource = obj.checkScalarStringArg(EventSource,'EventSource');
            Position = obj.checkScalarInt32Arg(Position,'Position');
            Delay = obj.checkScalarDoubleArg(Delay,'Delay');
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            try
                obj.interface.LoadLoopUntilEvent(char(EventSource),int32(Position),double(Delay),char(BufferName),int32(ReadingBlock));
            catch e
                obj.interpretError(e);
            end
        end

        function LoadSortBinning(obj,Components,StartInLine,StartDelay,EndDelay,BufferName,AllPassBitPattern,LimitHigh,LimitLow,FailBitPattern)
            %LOADSORTBINNING This method loads a predefined trigger model configuration that sets up a sorting operation.
            
            obj.checkValidObj();
			error(nargchk(10,10,nargin,'struct'))
            Components = obj.checkScalarInt32Arg(Components,'Components');
            StartDelay = obj.checkScalarDoubleArg(StartDelay,'StartDelay');
            EndDelay = obj.checkScalarDoubleArg(EndDelay,'EndDelay');
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            AllPassBitPattern = obj.checkScalarInt16Arg(AllPassBitPattern,'AllPassBitPattern');
            LimitHigh = obj.checkVectorDoubleArg(LimitHigh,'LimitHigh');
            LimitLow = obj.checkVectorDoubleArg(LimitLow,'LimitLow');
            FailBitPattern = obj.checkVectorInt16Arg(FailBitPattern,'FailBitPattern');
            singleDimFlag = feature('COM_SafeArraySingleDim');
            try
                feature('COM_SafeArraySingleDim',1);
                obj.interface.LoadSortBinning(int32(Components),int32(StartInLine),double(StartDelay),double(EndDelay),char(BufferName),int16(AllPassBitPattern),double(LimitHigh),double(LimitLow),int16(FailBitPattern));
            catch e
                feature('COM_SafeArraySingleDim',singleDimFlag);
                obj.interpretError(e);
            end
            feature('COM_SafeArraySingleDim',singleDimFlag);
        end

        function LoadLogicTrigger(obj,DigitalInLine,DigitalOutLine,Count,Clear,Delay,ReadingBuffer,ReadingBlock)
            %LOADLOGICTRIGGER The method loads a predefined trigger model configuration that sets up an external or digital trigger through the digital I/O.
            
            obj.checkValidObj();
			error(nargchk(8,8,nargin,'struct'))
            DigitalInLine = obj.checkScalarInt32Arg(DigitalInLine,'DigitalInLine');
            DigitalOutLine = obj.checkScalarInt32Arg(DigitalOutLine,'DigitalOutLine');
            Count = obj.checkScalarInt32Arg(Count,'Count');
            Delay = obj.checkScalarDoubleArg(Delay,'Delay');
            ReadingBuffer = obj.checkScalarStringArg(ReadingBuffer,'ReadingBuffer');
            try
                obj.interface.LoadLogicTrigger(int32(DigitalInLine),int32(DigitalOutLine),int32(Count),int32(Clear),double(Delay),char(ReadingBuffer),int32(ReadingBlock));
            catch e
                obj.interpretError(e);
            end
        end

    end

end
