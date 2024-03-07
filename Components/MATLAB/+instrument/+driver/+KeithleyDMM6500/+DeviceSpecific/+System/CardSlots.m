classdef CardSlots < instrument.ivicom.RepeatedCapability
    %CARDSLOTS IKeithleyDMM6500CardSlots interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = CardSlots(interface)
            
            %% construct superclass
            obj@instrument.ivicom.RepeatedCapability(interface);
        end
        
        function delete(obj)
        end

    end
    
    %% Public Read Only Properties
    properties (SetAccess = private)

        %COUNT Returns the number of cardslots. Read Only.
        Count

    end

    %% Property access methods
    methods

        %% Count property access methods
        function value = get.Count(obj)
            obj.checkValidObj();
            try
                value = obj.interface.Count;
            catch e
                obj.interpretError(e);
            end
        end

    end

    %% Public Methods
    methods

        function val = Name(obj,Index)
            %NAME Returns the cardslot name for a given index.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            Index = obj.checkScalarInt32Arg(Index,'Index');
            try
                [val] = obj.interface.Name(int32(Index));
            catch e
                obj.interpretError(e);
            end
        end

        function val = Item(obj,Name)
            %ITEM Pointer to the IKeithleyDMM6500CardSlot interface.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            Name = obj.checkScalarStringArg(Name,'Name');
            try
                [val] = instrument.driver.KeithleyDMM6500.DeviceSpecific.System.CardSlots.Item(obj.interface.Item(char(Name)));
            catch e
                obj.interpretError(e);
            end
        end

    end

end
