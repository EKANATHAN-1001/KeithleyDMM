classdef Statistics < instrument.ivicom.Interface
    %STATISTICS IKeithleyDMM6500BufferStatistics interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = Statistics(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);
        end
        
        function delete(obj)
        end

    end
    
    %% Public Methods
    methods

        function Clear(obj,BufferName)
            %CLEAR Clears the statistical information associated with the specified buffer.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            try
                obj.interface.Clear(char(BufferName));
            catch e
                obj.interpretError(e);
            end
        end

        function val = Average(obj,BufferName)
            %AVERAGE Returns the average reading calculated from all of the readings in the specified reading buffer.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            try
                [val] = obj.interface.Average(char(BufferName));
            catch e
                obj.interpretError(e);
            end
        end

        function val = Maximum(obj,BufferName)
            %MAXIMUM Returns the maximum reading value in the specified buffer.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            try
                [val] = obj.interface.Maximum(char(BufferName));
            catch e
                obj.interpretError(e);
            end
        end

        function val = Minimum(obj,BufferName)
            %MINIMUM Returns the minimum reading value in the specified buffer.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            try
                [val] = obj.interface.Minimum(char(BufferName));
            catch e
                obj.interpretError(e);
            end
        end

        function val = Peak2Peak(obj,BufferName)
            %PEAK2PEAK Returns the peak-to-peak reading value in the specified buffer.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            try
                [val] = obj.interface.Peak2Peak(char(BufferName));
            catch e
                obj.interpretError(e);
            end
        end

        function val = StandardDeviation(obj,BufferName)
            %STANDARDDEVIATION Returns the standard deviation of the readings in the specified buffer.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            BufferName = obj.checkScalarStringArg(BufferName,'BufferName');
            try
                [val] = obj.interface.StandardDeviation(char(BufferName));
            catch e
                obj.interpretError(e);
            end
        end

    end

end
