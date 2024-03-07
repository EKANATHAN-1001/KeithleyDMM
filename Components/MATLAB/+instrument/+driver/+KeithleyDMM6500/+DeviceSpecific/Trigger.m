classdef Trigger < instrument.ivicom.Interface
    %TRIGGER IviDCPwr class-compliant IIviDCPwrTrigger interface
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = Trigger(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);

            %% Initialize properties
            try
                obj.Timer = instrument.driver.KeithleyDMM6500.DeviceSpecific.Trigger.Timer(obj.interface.Timer);
            catch %#ok<CTCH>
            end

            try
                obj.Digital = instrument.driver.KeithleyDMM6500.DeviceSpecific.Trigger.Digital(obj.interface.Digital);
            catch %#ok<CTCH>
            end

            try
                obj.LAN = instrument.driver.KeithleyDMM6500.DeviceSpecific.Trigger.LAN(obj.interface.LAN);
            catch %#ok<CTCH>
            end

            try
                obj.Blender = instrument.driver.KeithleyDMM6500.DeviceSpecific.Trigger.Blender(obj.interface.Blender);
            catch %#ok<CTCH>
            end

            try
                obj.Model = instrument.driver.KeithleyDMM6500.DeviceSpecific.Trigger.Model(obj.interface.Model);
            catch %#ok<CTCH>
            end

            try
                obj.External = instrument.driver.KeithleyDMM6500.DeviceSpecific.Trigger.External(obj.interface.External);
            catch %#ok<CTCH>
            end

        end
        
        function delete(obj)
            obj.Timer = [];
            obj.Digital = [];
            obj.LAN = [];
            obj.Blender = [];
            obj.Model = [];
            obj.External = [];
        end

    end
    
    %% Public Read Only Properties
    properties (SetAccess = private)

        %TIMER Pointer to the IKeithleyDMM6500TriggerTimer interface. Read Only.
        Timer

        %DIGITAL Pointer to the IKeithleyDMM6500TriggerDigital interface. Read Only.
        Digital

        %LAN Pointer to the IKeithleyDMM6500TriggerLAN interface. Read Only.
        LAN

        %BLENDER Pointer to the IKeithleyDMM6500TriggerBlender interface. Read Only.
        Blender

        %MODEL Pointer to the IKeithleyDMM6500TriggerModel interface. Read Only.
        Model

        %EXTERNAL Pointer to the IKeithleyDMM6500TriggerExternal interface. Read Only.
        External

    end

    %% Property access methods
    methods

        %% Timer property access methods
        function value = get.Timer(obj)
            obj.checkValidObj();
            if isempty(obj.Timer)
                try
                    obj.Timer = instrument.driver.KeithleyDMM6500.DeviceSpecific.Trigger.Timer(obj.interface.Timer);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Timer;
        end

        %% Digital property access methods
        function value = get.Digital(obj)
            obj.checkValidObj();
            if isempty(obj.Digital)
                try
                    obj.Digital = instrument.driver.KeithleyDMM6500.DeviceSpecific.Trigger.Digital(obj.interface.Digital);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Digital;
        end

        %% LAN property access methods
        function value = get.LAN(obj)
            obj.checkValidObj();
            if isempty(obj.LAN)
                try
                    obj.LAN = instrument.driver.KeithleyDMM6500.DeviceSpecific.Trigger.LAN(obj.interface.LAN);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.LAN;
        end

        %% Blender property access methods
        function value = get.Blender(obj)
            obj.checkValidObj();
            if isempty(obj.Blender)
                try
                    obj.Blender = instrument.driver.KeithleyDMM6500.DeviceSpecific.Trigger.Blender(obj.interface.Blender);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Blender;
        end

        %% Model property access methods
        function value = get.Model(obj)
            obj.checkValidObj();
            if isempty(obj.Model)
                try
                    obj.Model = instrument.driver.KeithleyDMM6500.DeviceSpecific.Trigger.Model(obj.interface.Model);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Model;
        end

        %% External property access methods
        function value = get.External(obj)
            obj.checkValidObj();
            if isempty(obj.External)
                try
                    obj.External = instrument.driver.KeithleyDMM6500.DeviceSpecific.Trigger.External(obj.interface.External);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.External;
        end

    end

    %% Public Methods
    methods

        function Abort(obj)
            %ABORT Aborts a previously initiated measurement and returns the DMM to the idle state.
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            try
                obj.interface.Abort();
            catch e
                obj.interpretError(e);
            end
        end

        function Initiate(obj)
            %INITIATE Starts the trigger model.
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            try
                obj.interface.Initiate();
            catch e
                obj.interpretError(e);
            end
        end

        function SendSoftwareTrigger(obj)
            %SENDSOFTWARETRIGGER method Send Software Trigger supplies a trigger signal when the trigger source is set to Software Trigger
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            try
                obj.interface.SendSoftwareTrigger();
            catch e
                obj.interpretError(e);
            end
        end

        function Wait(obj)
            %WAIT Wait until all the previous commands are complete to accept new commands.
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            try
                obj.interface.Wait();
            catch e
                obj.interpretError(e);
            end
        end

    end

end
