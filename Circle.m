classdef Circle
    properties
        radius {mustBeNumeric, mustBeScalarOrEmpty}
    end

    methods
        function obj = Circle(rad)
            obj.radius = rad;
        end

        function a = area(obj)
            a = pi * obj.radius.^2;
        end

        function p = perimeter(obj)
            p = 2*pi*obj.radius;
        end
    end
end