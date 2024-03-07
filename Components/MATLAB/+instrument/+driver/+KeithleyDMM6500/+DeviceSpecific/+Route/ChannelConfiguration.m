classdef ChannelConfiguration < instrument.ivicom.Interface
    %CHANNELCONFIGURATION IKeithleyDMM6500RouteChannelConfiguration interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = ChannelConfiguration(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);
        end
        
        function delete(obj)
        end

    end
    
    %% Public Properties
    properties

        %CLOSECOUNTINTERVAL The property determines how often the instrument stores the channel relay closure count.
        CloseCountInterval

        %MULTIPLECLOSED The property SET closes the listed channels without affecting any other channels and GET queries a list of all closed channels.
        MultipleClosed

    end

    %% Property access methods
    methods

        %% CloseCountInterval property access methods
        function value = get.CloseCountInterval(obj)
            obj.checkValidObj();
            try
                value = obj.interface.CloseCountInterval;
            catch e
                obj.interpretError(e);
            end
        end
		function set.CloseCountInterval(obj,newValue)
			obj.checkValidObj();
            try
                obj.interface.CloseCountInterval = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% MultipleClosed property access methods
        function value = get.MultipleClosed(obj)
            obj.checkValidObj();
            try
                value = obj.interface.MultipleClosed;
            catch e
                obj.interpretError(e);
            end
        end
		function set.MultipleClosed(obj,newValue)
			obj.checkValidObj();
            newValue = obj.checkScalarStringArg(newValue,'MultipleClosed');
            try
                obj.interface.MultipleClosed = newValue;
            catch e
                obj.interpretError(e);
            end
        end

    end

    %% Public Methods
    methods

        function Close(obj,ChannelList)
            %CLOSE The Method closes the specified channels or channel pairs.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                obj.interface.Close(char(ChannelList));
            catch e
                obj.interpretError(e);
            end
        end

        function val = ReadCloseCount(obj,ChannelList)
            %READCLOSECOUNT The method returns the number of times the relays have been closed for the specified channels.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                [val] = obj.interface.ReadCloseCount(char(ChannelList));
            catch e
                obj.interpretError(e);
            end
        end

        function ConfigureMatch(obj,Value,ChannelList)
            %CONFIGUREMATCH The method sets the match value on a digital input or totalizer channel.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            Value = obj.checkScalarInt32Arg(Value,'Value');
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                obj.interface.ConfigureMatch(int32(Value),char(ChannelList));
            catch e
                obj.interpretError(e);
            end
        end

        function ConfigureMatchMask(obj,Value,ChannelList,Mask)
            %CONFIGUREMATCHMASK The method sets the match value on a digital input or totalizer channel.
            
            obj.checkValidObj();
			error(nargchk(4,4,nargin,'struct'))
            Value = obj.checkScalarInt32Arg(Value,'Value');
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            Mask = obj.checkScalarInt32Arg(Mask,'Mask');
            try
                obj.interface.ConfigureMatchMask(int32(Value),char(ChannelList),int32(Mask));
            catch e
                obj.interpretError(e);
            end
        end

        function val = ReadMatch(obj,ChannelList)
            %READMATCH The method gets the match value on a channel.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                [val] = obj.interface.ReadMatch(char(ChannelList));
            catch e
                obj.interpretError(e);
            end
        end

        function OpenMultiple(obj,ChannelList)
            %OPENMULTIPLE The method opens the channels in the channel list without affecting any others.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                obj.interface.OpenMultiple(char(ChannelList));
            catch e
                obj.interpretError(e);
            end
        end

        function Open(obj,ChannelList)
            %OPEN The method opens the specified channels and channel pairs.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                obj.interface.Open(char(ChannelList));
            catch e
                obj.interpretError(e);
            end
        end

        function OpenAll(obj)
            %OPENALL The method opens all channels on all slots, including non-measurement channels.
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            try
                obj.interface.OpenAll();
            catch e
                obj.interpretError(e);
            end
        end

        function val = Read(obj,ChannelList)
            %READ The method reads a value from a channel.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                [val] = obj.interface.Read(char(ChannelList));
            catch e
                obj.interpretError(e);
            end
        end

        function val = SaveAndRead(obj,ChannelList,BufferName)
            %SAVEANDREAD The method reads a value from a channel.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            try
                [val] = obj.interface.SaveAndRead(char(ChannelList),char(BufferName));
            catch e
                obj.interpretError(e);
            end
        end

        function Write(obj,ChannelList,Value)
            %WRITE The method writes a value to a channel.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            Value = obj.checkScalarDoubleArg(Value,'Value');
            try
                obj.interface.Write(char(ChannelList),double(Value));
            catch e
                obj.interpretError(e);
            end
        end

        function val = ReadState(obj)
            %READSTATE The method returns the state indicators of the channels in the instrument.The states that can be returned depend on the type of channel.
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            singleDimFlag = feature('COM_SafeArraySingleDim');
            try
                feature('COM_SafeArraySingleDim',1);
                [val] = obj.interface.ReadState();
            catch e
                feature('COM_SafeArraySingleDim',singleDimFlag);
                obj.interpretError(e);
            end
            feature('COM_SafeArraySingleDim',singleDimFlag);
        end

        function val = ReadChannelState(obj,ChannelList)
            %READCHANNELSTATE The method returns the state indicators of the channels in the instrument.The states that can be returned depend on the type of channel.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                [val] = obj.interface.ReadChannelState(char(ChannelList));
            catch e
                obj.interpretError(e);
            end
        end

        function val = ReadChannelType(obj,ChannelList)
            %READCHANNELTYPE The method returns the type associated with a channel.Refer to the documentation for your module for information about the channel types available for your card.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                [val] = obj.interface.ReadChannelType(char(ChannelList));
            catch e
                obj.interpretError(e);
            end
        end

        function val = Delay(obj,ChannelList,newValue)
            %DELAY The property sets or queries additional delay time for specified
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 2
                    [val] = obj.interface.Delay(char(ChannelList));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'Delay');
                    obj.interface.Delay(char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = Label(obj,Channel,newValue)
            %LABEL The Property sets or queries the label associated with a channel. After defining a label, you can use it to specify the channel instead of using the channel number.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            Channel = obj.checkScalarStringArg(Channel,'Channel');
            try
                if nargin == 2
                    [val] = obj.interface.Label(char(Channel));
                else
                    newValue = obj.checkScalarStringArg(newValue,'Label');
                    obj.interface.Label(char(Channel),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = MatchType(obj,ChannelList,newValue)
            %MATCHTYPE The property sets or queries the match type on a channel.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 2
                    [val] = obj.interface.MatchType(char(ChannelList));
                else
                            obj.interface.MatchType(char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = Mode(obj,ChannelList,newValue)
            %MODE The property sets or queries the mode of operation of a channel.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 2
                    [val] = obj.interface.Mode(char(ChannelList));
                else
                            obj.interface.Mode(char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = Width(obj,ChannelList,newValue)
            %WIDTH The property sets or queries the width used by the channel.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 2
                    [val] = obj.interface.Width(char(ChannelList));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'Width');
                    obj.interface.Width(char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

    end

end
