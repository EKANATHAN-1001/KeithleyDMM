classdef Buffer < instrument.ivicom.Interface
    %BUFFER IKeithleyDMM6500Buffer interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = Buffer(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);

            %% Initialize properties
            try
                obj.Statistics = instrument.driver.KeithleyDMM6500.DeviceSpecific.Buffer.Statistics(obj.interface.Statistics);
            catch %#ok<CTCH>
            end

        end
        
        function delete(obj)
            obj.Statistics = [];
        end

    end
    
    %% Public Read Only Properties
    properties (SetAccess = private)

        %STATISTICS Pointer to the IKeithleyDMM6500BufferStatistics interface. Read Only.
        Statistics

    end

    %% Property access methods
    methods

        %% Statistics property access methods
        function value = get.Statistics(obj)
            obj.checkValidObj();
            if isempty(obj.Statistics)
                try
                    obj.Statistics = instrument.driver.KeithleyDMM6500.DeviceSpecific.Buffer.Statistics(obj.interface.Statistics);
                catch e
                    obj.interpretError(e);
                end
            end
            value = obj.Statistics;
        end

    end

    %% Public Methods
    methods

        function AppendDataToFile(obj,FileName,BufferName,TimeFormat,Start,End)
            %APPENDDATATOFILE It appends data from the reading buffer to a file on the USB flash drive.
            
            obj.checkValidObj();
			error(nargchk(6,6,nargin,'struct'))
            FileName = obj.checkScalarStringArg(FileName,'FileName');
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            Start = obj.checkScalarInt32Arg(Start,'Start');
            End = obj.checkScalarInt32Arg(End,'End');
            try
                obj.interface.AppendDataToFile(char(FileName),char(BufferName),int32(TimeFormat),int32(Start),int32(End));
            catch e
                obj.interpretError(e);
            end
        end

        function Clear(obj,BufferName)
            %CLEAR Clears all readings and associated recall attributes from the specified buffer.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            try
                obj.interface.Clear(char(BufferName));
            catch e
                obj.interpretError(e);
            end
        end

        function Create(obj,BufferName,BufferSize)
            %CREATE Creates a user-defined reading buffer.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            BufferSize = obj.checkScalarInt32Arg(BufferSize,'BufferSize');
            try
                obj.interface.Create(char(BufferName),int32(BufferSize));
            catch e
                obj.interpretError(e);
            end
        end

        function Delete(obj,BufferName)
            %DELETE Delete/Remove the user created buffer from the system.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            try
                obj.interface.Delete(char(BufferName));
            catch e
                obj.interpretError(e);
            end
        end

        function val = FetchElement(obj,BufferName,BufferElements)
            %FETCHELEMENT Requests the latest post-processed readings stored in the sample buffer based on selected BufferElement.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            BufferElements = obj.checkScalarStringArg(BufferElements,'BufferElements');
            try
                [val] = obj.interface.FetchElement(char(BufferName),char(BufferElements));
            catch e
                obj.interpretError(e);
            end
        end

        function val = FetchDoubleData(obj,StartIndex,EndIndex,BufferName,BufferElement)
            %FETCHDOUBLEDATA Fetch the specified data elements stored in a specified reading buffer. This method is supported for Fractional, Relative, Reading, Seconds, Extra and Status buffer element formats, Use GetStringData(...) for getting data with other buffer element format types.
            
            obj.checkValidObj();
			error(nargchk(5,5,nargin,'struct'))
            StartIndex = obj.checkScalarInt32Arg(StartIndex,'StartIndex');
            EndIndex = obj.checkScalarInt32Arg(EndIndex,'EndIndex');
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            singleDimFlag = feature('COM_SafeArraySingleDim');
            try
                feature('COM_SafeArraySingleDim',1);
                [val] = obj.interface.FetchDoubleData(int32(StartIndex),int32(EndIndex),char(BufferName),int32(BufferElement));
            catch e
                feature('COM_SafeArraySingleDim',singleDimFlag);
                obj.interpretError(e);
            end
            feature('COM_SafeArraySingleDim',singleDimFlag);
        end

        function val = FetchStringData(obj,StartIndex,EndIndex,BufferName,BufferElement)
            %FETCHSTRINGDATA Fetch the specified data elements stored in a specified reading buffer.User has to parse the string by ',' or ':' or by '/' based on their need. This method is supported for Date, Extra, Formatted, Time, TimeStamp and Unit buffer element formats, Use GetDoubleData(...) for getting data with other buffer element format types.
            
            obj.checkValidObj();
			error(nargchk(5,5,nargin,'struct'))
            StartIndex = obj.checkScalarInt32Arg(StartIndex,'StartIndex');
            EndIndex = obj.checkScalarInt32Arg(EndIndex,'EndIndex');
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            try
                [val] = obj.interface.FetchStringData(int32(StartIndex),int32(EndIndex),char(BufferName),int32(BufferElement));
            catch e
                obj.interpretError(e);
            end
        end

        function SaveDataToFile(obj,FileName,BufferName,TimeFormat,Start,Stop)
            %SAVEDATATOFILE Saves data from the specified reading buffer to a USB flash drive.
            
            obj.checkValidObj();
			error(nargchk(6,6,nargin,'struct'))
            FileName = obj.checkScalarStringArg(FileName,'FileName');
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            Start = obj.checkScalarInt32Arg(Start,'Start');
            Stop = obj.checkScalarInt32Arg(Stop,'Stop');
            try
                obj.interface.SaveDataToFile(char(FileName),char(BufferName),int32(TimeFormat),int32(Start),int32(Stop));
            catch e
                obj.interpretError(e);
            end
        end

        function TraceTrigger(obj,BufferName)
            %TRACETRIGGER Makes readings and stores them in the specified buffer.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            try
                obj.interface.TraceTrigger(char(BufferName));
            catch e
                obj.interpretError(e);
            end
        end

        function TraceDigitizerTrigger(obj,BufferName)
            %TRACEDIGITIZERTRIGGER Makes readings and stores them in the specified buffer.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            try
                obj.interface.TraceDigitizerTrigger(char(BufferName));
            catch e
                obj.interpretError(e);
            end
        end

        function val = FetchData(obj,StartIndex,EndIndex,BufferName,BufferElement)
            %FETCHDATA Fetch the specified data elements stored in a specified reading buffer.User has to parse the string by ',' or ':' or by '/' based on their need. Use ','(Comma) seperated BufferElements to read different buffer element types.
            
            obj.checkValidObj();
			error(nargchk(5,5,nargin,'struct'))
            StartIndex = obj.checkScalarInt32Arg(StartIndex,'StartIndex');
            EndIndex = obj.checkScalarInt32Arg(EndIndex,'EndIndex');
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            BufferElement = obj.checkScalarStringArg(BufferElement,'BufferElement');
            try
                [val] = obj.interface.FetchData(int32(StartIndex),int32(EndIndex),char(BufferName),char(BufferElement));
            catch e
                obj.interpretError(e);
            end
        end

        function val = Actual(obj,BufferName)
            %ACTUAL Returns the number of readings in the specified buffer.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            try
                [val] = obj.interface.Actual(char(BufferName));
            catch e
                obj.interpretError(e);
            end
        end

        function val = FillMode(obj,BufferName,newValue)
            %FILLMODE Sets or queries the fill type of specified buffer.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            try
                if nargin == 2
                    [val] = obj.interface.FillMode(char(BufferName));
                else
                            obj.interface.FillMode(char(BufferName),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = Size(obj,BufferName,newValue)
            %SIZE Change or Queries the capacity of the buffer.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            try
                if nargin == 2
                    [val] = obj.interface.Size(char(BufferName));
                else
                    newValue = obj.checkScalarInt32Arg(newValue,'Size');
                    obj.interface.Size(char(BufferName),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = LogStateEnabled(obj,BufferName,newValue)
            %LOGSTATEENABLED Sets or queries the log state of specified buffer.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            try
                if nargin == 2
                    [val] = obj.interface.LogStateEnabled(char(BufferName));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'LogStateEnabled');
                    obj.interface.LogStateEnabled(char(BufferName),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

    end

end
