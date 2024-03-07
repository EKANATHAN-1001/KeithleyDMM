classdef KeithleyDMM6500 < instrument.ivicom.IviDmm
    %KEITHLEYDMM6500 IVI Driver for KeithleyDMM6500
    
    %% Construction/Clean up
    methods

        function obj = KeithleyDMM6500()
            
            %% construct superclass
            obj@instrument.ivicom.IviDmm('KeithleyDMM6500.KeithleyDMM6500');
            
            try
                deviceSpecificInterface = obj.getCOMInterface('IKeithleyDMM6500');
            catch %#ok<CTCH>
                error('instrument:driver:driverInvalid','The interface ''IKeithleyDMM6500'' was not found.  The driver specified may not be an IVI-COM driver.');
            end
            try
                iviDriverInterface = obj.getCOMInterface('IIviDriver');
            catch %#ok<CTCH>
                error('instrument:driver:driverInvalid','The interface ''IIviDriver'' was not found.  The driver specified may not be an IviDriver IVI-COM driver.');
            end

            %% Initialize properties
            try
                obj.DeviceSpecific = instrument.driver.KeithleyDMM6500.DeviceSpecific(deviceSpecificInterface);
                obj.IviDriver = instrument.ivicom.IviDriver(iviDriverInterface);
            catch %#ok<CTCH>
            end

        end

    end
    
    %% Public Read Only Properties
    properties (SetAccess = private)

        %DEVICESPECIFIC Device Specific interface for the IVI-COM driver
        %Read Only.
        DeviceSpecific

        %IVIDRIVER IviDriver interface for the IVI-COM driver
        %Read Only.
        IviDriver

    end

end
