classdef Digitizer < instrument.ivicom.Interface
    %DIGITIZER IKeithleyDMM6500Digitizer interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = Digitizer(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);

            %% Initialize properties
            try
                obj.Configuration = instrument.driver.KeithleyDMM6500.DeviceSpecific.Digitizer.Configuration(obj.interface.Configuration);
            catch %#ok<CTCH>
            end

        end
        
        function delete(obj)
            obj.Configuration = [];
        end

    end
    
    %% Public Properties
    properties

        %FUNCTION The digitizer measurement function.
        Function

    end

    %% Public Read Only Properties
    properties (SetAccess = private)

        %CONFIGURATION Pointer to the IKeithleyDMM6500DigitizerConfiguration interface. Read Only.
        Configuration

    end

    %% Property access methods
    methods

        %% Function property access methods
        function value = get.Function(obj)
            obj.checkValidObj();
            try
                value = obj.interface.Function;
            catch e
                obj.interpretError(e);
            end
        end
		function set.Function(obj,newValue)
			obj.checkValidObj();
            try
                obj.interface.Function = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% Configuration property access methods
        function value = get.Configuration(obj)
            obj.checkValidObj();
            if isempty(obj.Configuration)
                try
                    obj.Configuration = instrument.driver.KeithleyDMM6500.DeviceSpecific.Digitizer.Configuration(obj.interface.Configuration);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Configuration;
        end

    end

    %% Public Methods
    methods

        function val = Measure(obj,Function,BufferName,BufferElements)
            %MEASURE This method makes a Digitizer measurement and stores the reading in a reading buffer.
            
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

        function val = Read(obj,BufferName,BufferElements)
            %READ This method makes Digitizer measurements, places them in a reading buffer, and returns the latest reading.
            
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

        function val = ChannelFunction(obj,ChannelList,newValue)
            %CHANNELFUNCTION The digitizer measurement function.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 2
                    [val] = obj.interface.ChannelFunction(char(ChannelList));
                else
                            obj.interface.ChannelFunction(char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

    end

end
