classdef Route < instrument.ivicom.Interface
    %ROUTE IKeithleyDMM6500Route interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = Route(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);

            %% Initialize properties
            try
                obj.ChannelConfiguration = instrument.driver.KeithleyDMM6500.DeviceSpecific.Route.ChannelConfiguration(obj.interface.ChannelConfiguration);
            catch %#ok<CTCH>
            end

            try
                obj.Scan = instrument.driver.KeithleyDMM6500.DeviceSpecific.Route.Scan(obj.interface.Scan);
            catch %#ok<CTCH>
            end

        end
        
        function delete(obj)
            obj.ChannelConfiguration = [];
            obj.Scan = [];
        end

    end
    
    %% Public Read Only Properties
    properties (SetAccess = private)

        %TERMINAL Queries which set of input and output terminals the instrument is using. Read Only.
        Terminal

        %CHANNELCONFIGURATION Pointer to the IKeithleyDMM6500RouteChannelConfiguration interface. Read Only.
        ChannelConfiguration

        %SCAN Pointer to the IKeithleyDMM6500RouteScan interface. Read Only.
        Scan

    end

    %% Property access methods
    methods

        %% Terminal property access methods
        function value = get.Terminal(obj)
            obj.checkValidObj();
            try
                value = obj.interface.Terminal;
            catch e
                obj.interpretError(e);
            end
        end

        %% ChannelConfiguration property access methods
        function value = get.ChannelConfiguration(obj)
            obj.checkValidObj();
            if isempty(obj.ChannelConfiguration)
                try
                    obj.ChannelConfiguration = instrument.driver.KeithleyDMM6500.DeviceSpecific.Route.ChannelConfiguration(obj.interface.ChannelConfiguration);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.ChannelConfiguration;
        end

        %% Scan property access methods
        function value = get.Scan(obj)
            obj.checkValidObj();
            if isempty(obj.Scan)
                try
                    obj.Scan = instrument.driver.KeithleyDMM6500.DeviceSpecific.Route.Scan(obj.interface.Scan);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Scan;
        end

    end

end
