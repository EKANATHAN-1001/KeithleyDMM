classdef Measurement < instrument.ivicom.Interface
    %MEASUREMENT IKeithleyDMM6500Measurement interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = Measurement(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);

            %% Initialize properties
            try
                obj.Configuration = instrument.driver.KeithleyDMM6500.DeviceSpecific.Measurement.Configuration(obj.interface.Configuration);
            catch %#ok<CTCH>
            end

        end
        
        function delete(obj)
            obj.Configuration = [];
        end

    end
    
    %% Public Read Only Properties
    properties (SetAccess = private)

        %CONFIGURATION Pointer to the IKeithleyDMM6500MeasurementConfiguration interface. Read Only.
        Configuration

    end

    %% Property access methods
    methods

        %% Configuration property access methods
        function value = get.Configuration(obj)
            obj.checkValidObj();
            if isempty(obj.Configuration)
                try
                    obj.Configuration = instrument.driver.KeithleyDMM6500.DeviceSpecific.Measurement.Configuration(obj.interface.Configuration);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Configuration;
        end

    end

    %% Public Methods
    methods

        function val = Read(obj,BufferName,BufferElements)
            %READ This method makes the measurements, places them in a reading buffer, and returns the latest reading.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            BufferElements = obj.checkScalarStringArg(BufferElements,'BufferElements');
            try
                [val] = obj.interface.Read(char(BufferName),char(BufferElements));
            catch e
                obj.interpretError(e);
            end
        end

        function val = Measure(obj,Function,BufferName,BufferElements)
            %MEASURE This method makes a measurement and returns the reading.
            
            obj.checkValidObj();
			error(nargchk(4,4,nargin,'struct'))
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            BufferElements = obj.checkScalarStringArg(BufferElements,'BufferElements');
            try
                [val] = obj.interface.Measure(int32(Function),char(BufferName),char(BufferElements));
            catch e
                obj.interpretError(e);
            end
        end

    end

end
