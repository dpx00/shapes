classdef Rectangle
    properties
        length {mustBeNumeric, mustBeScalarOrEmpty}
        width {mustBeNumeric, mustBeScalarOrEmpty}
    end

    methods
        function obj = Rectangle(length, width)
            if nargin == 2
                obj.length = length;
                obj.width = width;
            else
                error("Invalid number of input arguments")
            end
        end

        function a = area(obj)
            a = [obj.length] .* [obj.width];
        end

        function p = perimeter(obj)
            p = 2 .* ([obj.length] + [obj.width]);
        end
    end
end