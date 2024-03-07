classdef Display < instrument.ivicom.Interface
    %DISPLAY IKeithleyDMM6500Display interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = Display(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);
        end
        
        function delete(obj)
        end

    end
    
    %% Public Properties
    properties

        %READINGFORMAT Sets or queries the format that is used to display measurement readings on the front-panel display of the instrument.
        ReadingFormat

    end

    %% Public Write Only Properties
    properties (GetAccess = private)

        %BRIGHTNESS Sets the brightness of the front-panel display. Write Only.
        Brightness

        %SCREENNAME Sets or queries the front-panel screen is displayed. Write Only.
        ScreenName

    end

    %% Property access methods
    methods

        %% Brightness property access methods
		function set.Brightness(obj,newValue)
			obj.checkValidObj();
            try
                obj.interface.Brightness = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% ReadingFormat property access methods
        function value = get.ReadingFormat(obj)
            obj.checkValidObj();
            try
                value = obj.interface.ReadingFormat;
            catch e
                obj.interpretError(e);
            end
        end
		function set.ReadingFormat(obj,newValue)
			obj.checkValidObj();
            try
                obj.interface.ReadingFormat = newValue;
            catch e
                obj.interpretError(e);
            end
        end

        %% ScreenName property access methods
		function set.ScreenName(obj,newValue)
			obj.checkValidObj();
            try
                obj.interface.ScreenName = newValue;
            catch e
                obj.interpretError(e);
            end
        end

    end

    %% Public Methods
    methods

        function Clear(obj)
            %CLEAR Clears the front-panel User Display screen.
            
            obj.checkValidObj();
			error(nargchk(1,1,nargin,'struct'))
            try
                obj.interface.Clear();
            catch e
                obj.interpretError(e);
            end
        end

        function Message(obj,LineNumber,TextMessage)
            %MESSAGE Defines the text that is displayed on the front-panel User Display screen.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            TextMessage = obj.checkScalarStringArg(TextMessage,'TextMessage');
            try
                obj.interface.Message(int32(LineNumber),char(TextMessage));
            catch e
                obj.interpretError(e);
            end
        end

        function val = Resolution(obj,Function,newValue)
            %RESOLUTION Sets or queries the number of digits that are displayed for measurements on the front panel.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.Resolution(int32(Function));
                else
                            obj.interface.Resolution(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = DigitizerResolution(obj,Function,newValue)
            %DIGITIZERRESOLUTION Set or Queries the Digitizer measurement function's display digits.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            try
                if nargin == 2
                    [val] = obj.interface.DigitizerResolution(int32(Function));
                else
                            obj.interface.DigitizerResolution(int32(Function),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

    end

end
