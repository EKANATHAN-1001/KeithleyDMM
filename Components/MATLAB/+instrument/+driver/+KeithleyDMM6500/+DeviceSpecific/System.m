classdef System < instrument.ivicom.Interface
    %SYSTEM IKeithleyDMM6500System interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = System(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);

            %% Initialize properties
            try
                obj.CardSlots = instrument.driver.KeithleyDMM6500.DeviceSpecific.System.CardSlots(obj.interface.CardSlots);
            catch %#ok<CTCH>
            end

        end
        
        function delete(obj)
            obj.CardSlots = [];
        end

    end
    
    %% Public Properties
    properties

        %IOTIMEOUT Gets or sets the I/O timeout in milliseconds.
        IOTimeout

        %PROGRAMMINGLANGUAGE Sets or Queries the programming language of the unit.
        ProgrammingLanguage

        %ACCESS Sets or queries the type of access users have to the instrument through different interfaces.
        Access

        %GPIBADDRESS Set or Query the GPIB address.The address can be set to any address value between 0 and 30.
        GPIBAddress

        %POWERONSETUP Sets or queries the defaults that are used when you power on the instrument.
        PowerOnSetup

        %TIME Sets or queries the absolute time of the instrument. To set time use comma separated string in format(with-out double quotes): {year}, {month}, {day}, {hour}, {minute}, {second}.
        Time

        %FANLEVEL This property sets or queries the speed of the instrument fan.
        FanLevel

    end

    %% Public Read Only Properties
    properties (SetAccess = private)

        %SESSION An integer that identifies the session in the underlying I/O that implements the I/O connection to the device. Read Only.
        Session

        %ERRORCOUNT Return the number of errors in the event log. Read Only.
        ErrorCount

        %MACADDRESS Queries the LAN MAC address. Read Only.
        MACAddress

        %POWERLINEFREQUENCY Queries the line frequency that was automatically detected. Read Only.
        PowerLineFrequency

        %SCPIVERSION Query the present SCPI version. Read Only.
        SCPIVersion

        %TERMINAL Queries which set of input and output terminals the instrument is using. Read Only.
        Terminal

        %TIMEINSECONDS Queries the absolute time of the instrument. It returns the present timestamp value in seconds since January 1, 1970 to the nearest second. Read Only.
        TimeInSeconds

        %CARDSLOTS Pointer to the IKeithleyDMM6500CardSlots interface. Read Only.
        CardSlots

    end

    %% Public Write Only Properties
    properties (GetAccess = private)

        %PASSWORD Stores the instrument password. Write Only.
        Password

    end

    %% Property access methods
    methods

        %% IOTimeout property access methods
        function value = get.IOTimeout(obj)
            obj.checkValidObj();
            try
                value = obj.interface.IOTimeout;
            catch e
                obj.interpretError(e);
            end
        end
		function set.IOTimeout(obj,newValue)
			obj.checkValidObj();
            newValue = obj.checkScalarInt32Arg(newValue,'IOTimeout');
            try
                obj.interface.IOTimeout = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% Session property access methods
        function value = get.Session(obj)
            obj.checkValidObj();
            try
                value = obj.interface.Session;
            catch e
                obj.interpretError(e);
            end
        end

        %% ProgrammingLanguage property access methods
        function value = get.ProgrammingLanguage(obj)
            obj.checkValidObj();
            try
                value = obj.interface.ProgrammingLanguage;
            catch e
                obj.interpretError(e);
            end
        end
		function set.ProgrammingLanguage(obj,newValue)
			obj.checkValidObj();
            try
                obj.interface.ProgrammingLanguage = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% Access property access methods
        function value = get.Access(obj)
            obj.checkValidObj();
            try
                value = obj.interface.Access;
            catch e
                obj.interpretError(e);
            end
        end
		function set.Access(obj,newValue)
			obj.checkValidObj();
            try
                obj.interface.Access = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% ErrorCount property access methods
        function value = get.ErrorCount(obj)
            obj.checkValidObj();
            try
                value = obj.interface.ErrorCount;
            catch e
                obj.interpretError(e);
            end
        end

        %% GPIBAddress property access methods
        function value = get.GPIBAddress(obj)
            obj.checkValidObj();
            try
                value = obj.interface.GPIBAddress;
            catch e
                obj.interpretError(e);
            end
        end
		function set.GPIBAddress(obj,newValue)
			obj.checkValidObj();
            newValue = obj.checkScalarInt32Arg(newValue,'GPIBAddress');
            try
                obj.interface.GPIBAddress = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% MACAddress property access methods
        function value = get.MACAddress(obj)
            obj.checkValidObj();
            try
                value = obj.interface.MACAddress;
            catch e
                obj.interpretError(e);
            end
        end

        %% Password property access methods
		function set.Password(obj,newValue)
			obj.checkValidObj();
            newValue = obj.checkScalarStringArg(newValue,'Password');
            try
                obj.interface.Password = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% PowerLineFrequency property access methods
        function value = get.PowerLineFrequency(obj)
            obj.checkValidObj();
            try
                value = obj.interface.PowerLineFrequency;
            catch e
                obj.interpretError(e);
            end
        end

        %% PowerOnSetup property access methods
        function value = get.PowerOnSetup(obj)
            obj.checkValidObj();
            try
                value = obj.interface.PowerOnSetup;
            catch e
                obj.interpretError(e);
            end
        end
		function set.PowerOnSetup(obj,newValue)
			obj.checkValidObj();
            try
                obj.interface.PowerOnSetup = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% SCPIVersion property access methods
        function value = get.SCPIVersion(obj)
            obj.checkValidObj();
            try
                value = obj.interface.SCPIVersion;
            catch e
                obj.interpretError(e);
            end
        end

        %% Terminal property access methods
        function value = get.Terminal(obj)
            obj.checkValidObj();
            try
                value = obj.interface.Terminal;
            catch e
                obj.interpretError(e);
            end
        end

        %% Time property access methods
        function value = get.Time(obj)
            obj.checkValidObj();
            try
                value = obj.interface.Time;
            catch e
                obj.interpretError(e);
            end
        end
		function set.Time(obj,newValue)
			obj.checkValidObj();
            newValue = obj.checkScalarStringArg(newValue,'Time');
            try
                obj.interface.Time = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% TimeInSeconds property access methods
        function value = get.TimeInSeconds(obj)
            obj.checkValidObj();
            try
                value = obj.interface.TimeInSeconds;
            catch e
                obj.interpretError(e);
            end
        end

        %% FanLevel property access methods
        function value = get.FanLevel(obj)
            obj.checkValidObj();
            try
                value = obj.interface.FanLevel;
            catch e
                obj.interpretError(e);
            end
        end
		function set.FanLevel(obj,newValue)
			obj.checkValidObj();
            try
                obj.interface.FanLevel = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% CardSlots property access methods
        function value = get.CardSlots(obj)
            obj.checkValidObj();
            if isempty(obj.CardSlots)
                try
                    obj.CardSlots = instrument.driver.KeithleyDMM6500.DeviceSpecific.System.CardSlots(obj.interface.CardSlots);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.CardSlots;
        end

    end

    %% Public Methods
    methods

        function val = ReadBytes(obj)
            %READBYTES Reads a complete response from the instrument.
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            singleDimFlag = feature('COM_SafeArraySingleDim');
            try
                feature('COM_SafeArraySingleDim',1);
                [val] = obj.interface.ReadBytes();
            catch e
                feature('COM_SafeArraySingleDim',singleDimFlag);
                obj.interpretError(e);
            end
            feature('COM_SafeArraySingleDim',singleDimFlag);
        end

        function val = ReadString(obj)
            %READSTRING Reads a complete response from the instrument and returns it as a string.
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            try
                [val] = obj.interface.ReadString();
            catch e
                obj.interpretError(e);
            end
        end

        function val = WriteBytes(obj,Buffer)
            %WRITEBYTES Write an array of bytes to the device.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            singleDimFlag = feature('COM_SafeArraySingleDim');
            try
                feature('COM_SafeArraySingleDim',1);
                [val] = obj.interface.WriteBytes(uint8(Buffer));
            catch e
                feature('COM_SafeArraySingleDim',singleDimFlag);
                obj.interpretError(e);
            end
            feature('COM_SafeArraySingleDim',singleDimFlag);
        end

        function WriteString(obj,Data)
            %WRITESTRING Write a string to the device.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            Data = obj.checkScalarStringArg(Data,'Data');
            try
                obj.interface.WriteString(char(Data));
            catch e
                obj.interpretError(e);
            end
        end

        function Beep(obj,Frequency,Time)
            %BEEP Generates an audible tone at a specified frequency and time duration.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            Frequency = obj.checkScalarDoubleArg(Frequency,'Frequency');
            Time = obj.checkScalarDoubleArg(Time,'Time');
            try
                obj.interface.Beep(double(Frequency),double(Time));
            catch e
                obj.interpretError(e);
            end
        end

        function Clear(obj)
            %CLEAR Clears messages from the event log, including entries in the front-panel event log.
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            try
                obj.interface.Clear();
            catch e
                obj.interpretError(e);
            end
        end

        function LANAutoConfiguration(obj)
            %LANAUTOCONFIGURATION Instrument automatically determines the LAN information. When method is automatic, the instrument first attempts to configure the LAN settings using dynamic host configuration protocol (DHCP). If DHCP fails, it tries dynamic link local addressing (DLLA). If DLLA fails, an error occurs.
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            try
                obj.interface.LANAutoConfiguration();
            catch e
                obj.interpretError(e);
            end
        end

        function LANConfiguration(obj,IPAddress,SubnetMask,Gateway)
            %LANCONFIGURATION Configures LAN IP address and other LAN settings. NOTE: If you do not specify a subnet mask or default gateway, the previous settings are used.
            
            obj.checkValidObj();
			error(nargchk(4,4,nargin,'struct'))
            IPAddress = obj.checkScalarStringArg(IPAddress,'IPAddress');
            SubnetMask = obj.checkScalarStringArg(SubnetMask,'SubnetMask');
            Gateway = obj.checkScalarStringArg(Gateway,'Gateway');
            try
                obj.interface.LANConfiguration(char(IPAddress),char(SubnetMask),char(Gateway));
            catch e
                obj.interpretError(e);
            end
        end

        function PostEventLog(obj,Message,SeverityType)
            %POSTEVENTLOG Post messages to the event log. By using this you can create your own event log entries and assign a severity level to them.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            Message = obj.checkScalarStringArg(Message,'Message');
            try
                obj.interface.PostEventLog(char(Message),int32(SeverityType));
            catch e
                obj.interpretError(e);
            end
        end

        function [returnIPAddress,returnSubnetMask,returnGateway,val] = QueryLANConfiguration(obj)
            %QUERYLANCONFIGURATION Returns LAN the present settings.
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            try
                [returnIPAddress,returnSubnetMask,returnGateway,val] = obj.interface.QueryLANConfiguration(char(0),char(0),char(0));
            catch e
                obj.interpretError(e);
            end
        end

        function val = ReadNextError(obj)
            %READNEXTERROR Read oldest error (code and message).
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            try
                [val] = obj.interface.ReadNextError();
            catch e
                obj.interpretError(e);
            end
        end

        function val = ReadNextErrorCode(obj)
            %READNEXTERRORCODE Returns the numeric code of the next error in the event log. The error is cleared from the queue after being read.
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            try
                [val] = obj.interface.ReadNextErrorCode();
            catch e
                obj.interpretError(e);
            end
        end

        function RecallSetup(obj,SetupNumber)
            %RECALLSETUP This method returns the instrument to the setup that was saved with the SaveSetup method
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            SetupNumber = obj.checkScalarInt32Arg(SetupNumber,'SetupNumber');
            try
                obj.interface.RecallSetup(int32(SetupNumber));
            catch e
                obj.interpretError(e);
            end
        end

        function SaveAllEventLogs(obj,Filename)
            %SAVEALLEVENTLOGS Saves the all event logs to a file on a USB flash drive.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            Filename = obj.checkScalarStringArg(Filename,'Filename');
            try
                obj.interface.SaveAllEventLogs(char(Filename));
            catch e
                obj.interpretError(e);
            end
        end

        function SaveEventLog(obj,Filename,EventType)
            %SAVEEVENTLOG Saves the event logs of specifed event types to a file on a USB flash drive.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            Filename = obj.checkScalarStringArg(Filename,'Filename');
            try
                obj.interface.SaveEventLog(char(Filename),int32(EventType));
            catch e
                obj.interpretError(e);
            end
        end

        function SaveSetup(obj,SetupNumber)
            %SAVESETUP This method saves the present instrument settings as a user-saved setup.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            SetupNumber = obj.checkScalarInt32Arg(SetupNumber,'SetupNumber');
            try
                obj.interface.SaveSetup(int32(SetupNumber));
            catch e
                obj.interpretError(e);
            end
        end

        function val = EventLogCount(obj,Mask)
            %EVENTLOGCOUNT Returns the number of events in the event log.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            try
                [val] = obj.interface.EventLogCount(int32(Mask));
            catch e
                obj.interpretError(e);
            end
        end

        function val = ReadNextEventLog(obj,Mask)
            %READNEXTEVENTLOG Returns the oldest message from the event log and removes it from the log.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            try
                [val] = obj.interface.ReadNextEventLog(int32(Mask));
            catch e
                obj.interpretError(e);
            end
        end

    end

end
