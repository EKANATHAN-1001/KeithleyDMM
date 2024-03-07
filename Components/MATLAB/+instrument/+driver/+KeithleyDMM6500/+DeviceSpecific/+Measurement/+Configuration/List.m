classdef List < instrument.ivicom.Interface
    %LIST IKeithleyDMM6500MeasurementConfigurationList interface.
    
    %% Construction/Clean up
    methods (Hidden=true)

        function obj = List(interface)
            
            %% construct superclass
            obj@instrument.ivicom.Interface(interface);
        end
        
        function delete(obj)
        end

    end
    
    %% Public Read Only Properties
    properties (SetAccess = private)

        %CATALOG Returns the name of one measure configuration list. Read Only.
        Catalog

    end

    %% Property access methods
    methods

        %% Catalog property access methods
        function value = get.Catalog(obj)
            obj.checkValidObj();
            try
                value = obj.interface.Catalog;
            catch e
                obj.interpretError(e);
            end
        end

    end

    %% Public Methods
    methods

        function Create(obj,Name)
            %CREATE Creates an empty measure configuration list.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            Name = obj.checkScalarStringArg(Name,'Name');
            try
                obj.interface.Create(char(Name));
            catch e
                obj.interpretError(e);
            end
        end

        function Delete(obj,Name)
            %DELETE Deletes a measure configuration list.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            Name = obj.checkScalarStringArg(Name,'Name');
            try
                obj.interface.Delete(char(Name));
            catch e
                obj.interpretError(e);
            end
        end

        function DeleteIndexData(obj,Name,Point)
            %DELETEINDEXDATA Deletes indexed configuration point in the configuration list .
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            Name = obj.checkScalarStringArg(Name,'Name');
            Point = obj.checkScalarInt32Arg(Point,'Point');
            try
                obj.interface.DeleteIndexData(char(Name),int32(Point));
            catch e
                obj.interpretError(e);
            end
        end

        function val = Read(obj,Name,Point)
            %READ Returns a list of TSP commands that represent the parameters that are stored in the specified configuration point.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            Name = obj.checkScalarStringArg(Name,'Name');
            Point = obj.checkScalarInt32Arg(Point,'Point');
            try
                [val] = obj.interface.Read(char(Name),int32(Point));
            catch e
                obj.interpretError(e);
            end
        end

        function Recall(obj,Name,Point)
            %RECALL To recall the settings stored in a specific configuration point on a specific configuration list.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            Name = obj.checkScalarStringArg(Name,'Name');
            Point = obj.checkScalarInt32Arg(Point,'Point');
            try
                obj.interface.Recall(char(Name),int32(Point));
            catch e
                obj.interpretError(e);
            end
        end

        function Append(obj,Name)
            %APPEND The active measure settings append to the end of the named configuration list.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            Name = obj.checkScalarStringArg(Name,'Name');
            try
                obj.interface.Append(char(Name));
            catch e
                obj.interpretError(e);
            end
        end

        function Store(obj,Name,Point)
            %STORE Store the active measure settings to a configuration point in a configuration list.
            
            obj.checkValidObj();
			error(nargchk(3,3,nargin,'struct'))
            Name = obj.checkScalarStringArg(Name,'Name');
            Point = obj.checkScalarInt32Arg(Point,'Point');
            try
                obj.interface.Store(char(Name),int32(Point));
            catch e
                obj.interpretError(e);
            end
        end

        function val = Size(obj,Name)
            %SIZE Returns the size (number of configuration points) of a measure configuration list.
            
            obj.checkValidObj();
			error(nargchk(2,2,nargin,'struct'))
            Name = obj.checkScalarStringArg(Name,'Name');
            try
                [val] = obj.interface.Size(char(Name));
            catch e
                obj.interpretError(e);
            end
        end

    end

end
