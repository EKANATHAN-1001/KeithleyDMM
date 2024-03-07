classdef Branch < instrument.ivicom.Interface
    %BRANCH IKeithleyDMM6500TriggerModelBlockBranch interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = Branch(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);
        end
        
        function delete(obj)
        end

    end
    
    %% Public Methods
    methods

        function DefineAlways(obj,BlockNumber,BranchPath)
            %DEFINEALWAYS Defines a trigger model block that always goes to a specific block.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            BlockNumber = obj.checkScalarInt32Arg(BlockNumber,'BlockNumber');
            BranchPath = obj.checkScalarInt32Arg(BranchPath,'BranchPath');
            try
                obj.interface.DefineAlways(int32(BlockNumber),int32(BranchPath));
            catch e
                obj.interpretError(e);
            end
        end

        function ConfigureCounter(obj,BlockNumber,TargetCount,BranchPath)
            %CONFIGURECOUNTER Sets the count value of the trigger model counter block or branches to a specified block a specified number of times.
            
            obj.checkValidObj();
			error(nargchk(4,4,nargin,'struct'))
            BlockNumber = obj.checkScalarInt32Arg(BlockNumber,'BlockNumber');
            TargetCount = obj.checkScalarInt32Arg(TargetCount,'TargetCount');
            BranchPath = obj.checkScalarDoubleArg(BranchPath,'BranchPath');
            try
                obj.interface.ConfigureCounter(int32(BlockNumber),int32(TargetCount),double(BranchPath));
            catch e
                obj.interpretError(e);
            end
        end

        function DefineDelta(obj,BlockNumber,TargetDifference,BranchPath,MeasureBlock)
            %DEFINEDELTA Defines a trigger model block that goes to a specified block if the difference of two measurements meets preset criteria.
            
            obj.checkValidObj();
			error(nargchk(5,5,nargin,'struct'))
            BlockNumber = obj.checkScalarInt32Arg(BlockNumber,'BlockNumber');
            TargetDifference = obj.checkScalarDoubleArg(TargetDifference,'TargetDifference');
            BranchPath = obj.checkScalarInt32Arg(BranchPath,'BranchPath');
            MeasureBlock = obj.checkScalarInt32Arg(MeasureBlock,'MeasureBlock');
            try
                obj.interface.DefineDelta(int32(BlockNumber),double(TargetDifference),int32(BranchPath),int32(MeasureBlock));
            catch e
                obj.interpretError(e);
            end
        end

        function OnEvent(obj,BlockNumber,EventID,BranchPath)
            %ONEVENT Branches to a specified block when a specified trigger event occurs.
            
            obj.checkValidObj();
			error(nargchk(4,4,nargin,'struct'))
            BlockNumber = obj.checkScalarInt32Arg(BlockNumber,'BlockNumber');
            EventID = obj.checkScalarStringArg(EventID,'EventID');
            BranchPath = obj.checkScalarInt32Arg(BranchPath,'BranchPath');
            try
                obj.interface.OnEvent(int32(BlockNumber),char(EventID),int32(BranchPath));
            catch e
                obj.interpretError(e);
            end
        end

        function ConfigureConstantLimit(obj,BlockNumber,LimitType,LimitA,LimitB,BranchPath,MeasureBlock)
            %CONFIGURECONSTANTLIMIT Defines a trigger model block that branches to a block outside the normal trigger model flow if a measurement meets preset criteria.
            
            obj.checkValidObj();
			error(nargchk(7,7,nargin,'struct'))
            BlockNumber = obj.checkScalarInt32Arg(BlockNumber,'BlockNumber');
            LimitA = obj.checkScalarDoubleArg(LimitA,'LimitA');
            LimitB = obj.checkScalarDoubleArg(LimitB,'LimitB');
            BranchPath = obj.checkScalarInt32Arg(BranchPath,'BranchPath');
            MeasureBlock = obj.checkScalarInt32Arg(MeasureBlock,'MeasureBlock');
            try
                obj.interface.ConfigureConstantLimit(int32(BlockNumber),int32(LimitType),double(LimitA),double(LimitB),int32(BranchPath),int32(MeasureBlock));
            catch e
                obj.interpretError(e);
            end
        end

        function ConfigureDynamicLimit(obj,BlockNumber,LimitType,LimitNumuber,BranchPath,MeasureBlock)
            %CONFIGUREDYNAMICLIMIT Defines a trigger model block that goes to a specified block in the trigger model if a measurement meets user-defined criteria.
            
            obj.checkValidObj();
			error(nargchk(6,6,nargin,'struct'))
            BlockNumber = obj.checkScalarInt32Arg(BlockNumber,'BlockNumber');
            LimitNumuber = obj.checkScalarInt32Arg(LimitNumuber,'LimitNumuber');
            BranchPath = obj.checkScalarInt32Arg(BranchPath,'BranchPath');
            MeasureBlock = obj.checkScalarInt32Arg(MeasureBlock,'MeasureBlock');
            try
                obj.interface.ConfigureDynamicLimit(int32(BlockNumber),int32(LimitType),int32(LimitNumuber),int32(BranchPath),int32(MeasureBlock));
            catch e
                obj.interpretError(e);
            end
        end

        function DefineOnce(obj,BlockNumber,BranchPath)
            %DEFINEONCE It causes the trigger model to branch to a specified building block the first time it is encountered in the trigger model.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            BlockNumber = obj.checkScalarInt32Arg(BlockNumber,'BlockNumber');
            BranchPath = obj.checkScalarInt32Arg(BranchPath,'BranchPath');
            try
                obj.interface.DefineOnce(int32(BlockNumber),int32(BranchPath));
            catch e
                obj.interpretError(e);
            end
        end

        function DefineOnceExcluded(obj,BlockNumber,BranchPath)
            %DEFINEONCEEXCLUDED It causes the trigger model to go to a specified building block every time the trigger model encounters it, except for the first time.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            BlockNumber = obj.checkScalarInt32Arg(BlockNumber,'BlockNumber');
            BranchPath = obj.checkScalarInt32Arg(BranchPath,'BranchPath');
            try
                obj.interface.DefineOnceExcluded(int32(BlockNumber),int32(BranchPath));
            catch e
                obj.interpretError(e);
            end
        end

        function ResetCounter(obj,BlockNumber,Counter)
            %RESETCOUNTER Method creates a block in the trigger model that resets a branch counter to 0.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            BlockNumber = obj.checkScalarInt32Arg(BlockNumber,'BlockNumber');
            Counter = obj.checkScalarInt32Arg(Counter,'Counter');
            try
                obj.interface.ResetCounter(int32(BlockNumber),int32(Counter));
            catch e
                obj.interpretError(e);
            end
        end

        function val = ReadCounter(obj,BlockNumber)
            %READCOUNTER Queries the count value of the trigger model counter block or branches to a specified block a specified number of times.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            BlockNumber = obj.checkScalarInt32Arg(BlockNumber,'BlockNumber');
            try
                [val] = obj.interface.ReadCounter(int32(BlockNumber));
            catch e
                obj.interpretError(e);
            end
        end

    end

end
