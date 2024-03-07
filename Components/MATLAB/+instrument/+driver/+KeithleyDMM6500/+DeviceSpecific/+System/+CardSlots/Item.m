classdef Item < instrument.ivicom.Interface
    %ITEM IKeithleyDMM6500CardSlot interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = Item(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);
        end
        
        function delete(obj)
        end

    end
    
    %% Public Read Only Properties
    properties (SetAccess = private)

        %ISCS4WIREOHMCHANNELSSUPPORTED The property gets if the specified slot supports commonside 4-wire ohm channels. Read Only.
        IsCS4WireOhmChannelsSupported

        %IDENTITY This method returns a string that contains information about the card in the specified slot. Read Only.
        Identity

        %ISTEMPERATURESENSORCHANNELSSUPPORTED This property gets if the card in the specified slot supports temperature sensor channels. Read Only.
        IsTemperatureSensorChannelsSupported

        %VOLTAGEMAX This property returns the maximum voltage of all channels on a card in the specified slot. Read Only.
        VoltageMax

    end

    %% Property access methods
    methods

        %% IsCS4WireOhmChannelsSupported property access methods
        function value = get.IsCS4WireOhmChannelsSupported(obj)
            obj.checkValidObj();
            try
                value = obj.interface.IsCS4WireOhmChannelsSupported;
            catch e
                obj.interpretError(e);
            end
        end

        %% Identity property access methods
        function value = get.Identity(obj)
            obj.checkValidObj();
            try
                value = obj.interface.Identity;
            catch e
                obj.interpretError(e);
            end
        end

        %% IsTemperatureSensorChannelsSupported property access methods
        function value = get.IsTemperatureSensorChannelsSupported(obj)
            obj.checkValidObj();
            try
                value = obj.interface.IsTemperatureSensorChannelsSupported;
            catch e
                obj.interpretError(e);
            end
        end

        %% VoltageMax property access methods
        function value = get.VoltageMax(obj)
            obj.checkValidObj();
            try
                value = obj.interface.VoltageMax;
            catch e
                obj.interpretError(e);
            end
        end

    end

    %% Public Methods
    methods

        function val = ReadFirstSupportedChannel(obj,Type)
            %READFIRSTSUPPORTEDCHANNEL The method gets the first channel in the specified slot that supports specified type.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            try
                [val] = obj.interface.ReadFirstSupportedChannel(int32(Type));
            catch e
                obj.interpretError(e);
            end
        end

        function val = ReadLastSupportedChannel(obj,Type)
            %READLASTSUPPORTEDCHANNEL The method gets the last channel in the specified slot that supports specified type.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            try
                [val] = obj.interface.ReadLastSupportedChannel(int32(Type));
            catch e
                obj.interpretError(e);
            end
        end

        function val = ReadMatrixCount(obj,RowsOrColumns)
            %READMATRIXCOUNT This method returns the number of rows/columns in the matrix on the card in the specified slot.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            try
                [val] = obj.interface.ReadMatrixCount(int32(RowsOrColumns));
            catch e
                obj.interpretError(e);
            end
        end

        function InstallPseudoCard(obj,CardNumber)
            %INSTALLPSEUDOCARD This method specifies a pseudocard to implement for the designated slot.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            CardNumber = obj.checkScalarStringArg(CardNumber,'CardNumber');
            try
                obj.interface.InstallPseudoCard(char(CardNumber));
            catch e
                obj.interpretError(e);
            end
        end

    end

end
