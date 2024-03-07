classdef Blender < instrument.ivicom.Interface
    %BLENDER IKeithleyDMM6500TriggerBlender interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = Blender(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);
        end
        
        function delete(obj)
        end

    end
    
    %% Public Methods
    methods

        function Clear(obj,BlenderNumber)
            %CLEAR Clears the blender event detector and resets blender.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            BlenderNumber = obj.checkScalarInt32Arg(BlenderNumber,'BlenderNumber');
            try
                obj.interface.Clear(int32(BlenderNumber));
            catch e
                obj.interpretError(e);
            end
        end

        function val = Mode(obj,BlenderNumber,newValue)
            %MODE Sets or queries the blender operation mode.
            
            obj.checkValidObj();
			error(nargchk(2,3,nargin,'struct'))
            BlenderNumber = obj.checkScalarInt32Arg(BlenderNumber,'BlenderNumber');
            try
                if nargin == 2
                    [val] = obj.interface.Mode(int32(BlenderNumber));
                else
                            obj.interface.Mode(int32(BlenderNumber),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

        function val = OverRun(obj,BlenderNumber)
            %OVERRUN Indicates whether or not an event was ignored because of the event detector state. If an event was ignored, the output is true. If an event was not ignored, the output is false.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            BlenderNumber = obj.checkScalarInt32Arg(BlenderNumber,'BlenderNumber');
            try
                [val] = obj.interface.OverRun(int32(BlenderNumber));
            catch e
                obj.interpretError(e);
            end
        end

        function val = Stimulus(obj,BlenderNumber,StimulusNumber,newValue)
            %STIMULUS Sets or queries which events trigger the blender.
            
            obj.checkValidObj();
			error(nargchk(3,4,nargin,'struct'))
            BlenderNumber = obj.checkScalarInt32Arg(BlenderNumber,'BlenderNumber');
            StimulusNumber = obj.checkScalarInt32Arg(StimulusNumber,'StimulusNumber');
            try
                if nargin == 3
                    [val] = obj.interface.Stimulus(int32(BlenderNumber),int32(StimulusNumber));
                else
                    newValue = obj.checkScalarStringArg(newValue,'Stimulus');
                    obj.interface.Stimulus(int32(BlenderNumber),int32(StimulusNumber),newValue);
                end
            catch e
                obj.interpretError(e);
            end
        end

    end

end
