classdef DataTransfer < instrument.ivicom.Interface
    %DATATRANSFER IKeithleyDMM6500DataTransfer interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = DataTransfer(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);
        end
        
        function delete(obj)
        end

    end
    
    %% Public Properties
    properties

        %ASCIIPRECISION Sets or queries the precision (number of digits) for all numbers returned in the ASCII format.
        ASCIIPrecision

        %BYTEORDER Sets or queries the byte order for the IEEE-754 binary formats.
        ByteOrder

        %DATAFORMAT Sets or queries the data format that is used when transferring readings over the remote interface.
        DataFormat

    end

    %% Property access methods
    methods

        %% ASCIIPrecision property access methods
        function value = get.ASCIIPrecision(obj)
            obj.checkValidObj();
            try
                value = obj.interface.ASCIIPrecision;
            catch e
                obj.interpretError(e);
            end
        end
		function set.ASCIIPrecision(obj,newValue)
			obj.checkValidObj();
            newValue = obj.checkScalarInt32Arg(newValue,'ASCIIPrecision');
            try
                obj.interface.ASCIIPrecision = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% ByteOrder property access methods
        function value = get.ByteOrder(obj)
            obj.checkValidObj();
            try
                value = obj.interface.ByteOrder;
            catch e
                obj.interpretError(e);
            end
        end
		function set.ByteOrder(obj,newValue)
			obj.checkValidObj();
            try
                obj.interface.ByteOrder = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% DataFormat property access methods
        function value = get.DataFormat(obj)
            obj.checkValidObj();
            try
                value = obj.interface.DataFormat;
            catch e
                obj.interpretError(e);
            end
        end
		function set.DataFormat(obj,newValue)
			obj.checkValidObj();
            try
                obj.interface.DataFormat = newValue;
            catch e
                obj.interpretError(e);
            end
        end

    end

end
