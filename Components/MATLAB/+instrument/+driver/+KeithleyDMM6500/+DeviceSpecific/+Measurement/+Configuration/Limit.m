classdef Limit < instrument.ivicom.Interface
    %LIMIT IKeithleyDMM6500MeasurementConfigurationLimit interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = Limit(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);
        end
        
        function delete(obj)
        end

    end
    
    %% Public Methods
    methods

        function val = ReadTestResult(obj,Function,LimitTest)
            %READTESTRESULT Queries the results of a limit test.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            try
                [val] = obj.interface.ReadTestResult(int32(Function),int32(LimitTest));
            catch e
                obj.interpretError(e);
            end
        end

        function Clear(obj,Function,LimitTest)
            %CLEAR Clear the test results of LimitTest(1 or 2) when the limit auto clear is disabled. It clears both the high and low test results.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            try
                obj.interface.Clear(int32(Function),int32(LimitTest));
            catch e
                obj.interpretError(e);
            end
        end

        function val = Enabled(obj,Function,LimitTest,newValue)
            %ENABLED Enables or disables a limit test for the selected measurement function.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            try
                if nargin == 3
                    [val] = obj.interface.Enabled(int32(Function),int32(LimitTest));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'Enabled');
                    obj.interface.Enabled(int32(Function),int32(LimitTest),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = AutoClearState(obj,Function,LimitTest,newValue)
            %AUTOCLEARSTATE Sets or queries the limit test's auto clear state.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            try
                if nargin == 3
                    [val] = obj.interface.AutoClearState(int32(Function),int32(LimitTest));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'AutoClearState');
                    obj.interface.AutoClearState(int32(Function),int32(LimitTest),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = High(obj,Function,LimitTest,newValue)
            %HIGH Sets or queries the upper limit for a limit test.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            try
                if nargin == 3
                    [val] = obj.interface.High(int32(Function),int32(LimitTest));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'High');
                    obj.interface.High(int32(Function),int32(LimitTest),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = Low(obj,Function,LimitTest,newValue)
            %LOW Sets or queries the lower limit for limit tests.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            try
                if nargin == 3
                    [val] = obj.interface.Low(int32(Function),int32(LimitTest));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'Low');
                    obj.interface.Low(int32(Function),int32(LimitTest),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = Audible(obj,LimitTest,Function,newValue)
            %AUDIBLE This property enables or disables the beeper that sounds when a limit is exceeded.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            try
                if nargin == 3
                    [val] = obj.interface.Audible(int32(LimitTest),int32(Function));
                else
                            obj.interface.Audible(int32(LimitTest),int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelAudible(obj,LimitTest,Function,ChannelList,newValue)
            %CHANNELAUDIBLE This property enables or disables the beeper that sounds when a limit is exceeded.
            
            obj.checkValidObj();
			error(nargchk(4,5,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 4
                    [val] = obj.interface.ChannelAudible(int32(LimitTest),int32(Function),char(ChannelList));
                else
                            obj.interface.ChannelAudible(int32(LimitTest),int32(Function),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelAutoClearState(obj,Function,LimitTest,ChannelList,newValue)
            %CHANNELAUTOCLEARSTATE Sets or queries the limit test's auto clear state.
            
            obj.checkValidObj();
			error(nargchk(4,5,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 4
                    [val] = obj.interface.ChannelAutoClearState(int32(Function),int32(LimitTest),char(ChannelList));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'ChannelAutoClearState');
                    obj.interface.ChannelAutoClearState(int32(Function),int32(LimitTest),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelEnabled(obj,Function,LimitTest,ChannelList,newValue)
            %CHANNELENABLED Enables or disables a limit test for the selected measurement function.
            
            obj.checkValidObj();
			error(nargchk(4,5,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 4
                    [val] = obj.interface.ChannelEnabled(int32(Function),int32(LimitTest),char(ChannelList));
                else
                    newValue = obj.checkScalarBoolArg(newValue,'ChannelEnabled');
                    obj.interface.ChannelEnabled(int32(Function),int32(LimitTest),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelHigh(obj,Function,LimitTest,ChannelList,newValue)
            %CHANNELHIGH Sets or queries the upper limit for a limit test.
            
            obj.checkValidObj();
			error(nargchk(4,5,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 4
                    [val] = obj.interface.ChannelHigh(int32(Function),int32(LimitTest),char(ChannelList));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'ChannelHigh');
                    obj.interface.ChannelHigh(int32(Function),int32(LimitTest),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = ChannelLow(obj,Function,LimitTest,ChannelList,newValue)
            %CHANNELLOW Sets or queries the lower limit for limit tests.
            
            obj.checkValidObj();
			error(nargchk(4,5,nargin,'struct'))
            ChannelList = obj.checkScalarStringArg(ChannelList,'ChannelList');
            try
                if nargin == 4
                    [val] = obj.interface.ChannelLow(int32(Function),int32(LimitTest),char(ChannelList));
                else
                    newValue = obj.checkScalarDoubleArg(newValue,'ChannelLow');
                    obj.interface.ChannelLow(int32(Function),int32(LimitTest),char(ChannelList),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

    end

end
