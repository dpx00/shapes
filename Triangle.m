classdef Triangle
    properties
        leg1 {mustBeNumeric, mustBeScalarOrEmpty}
        leg2 {mustBeNumeric, mustBeScalarOrEmpty}
        angle {mustBeNumeric, mustBeScalarOrEmpty}
    end

    methods
        function obj = Triangle(leg1, leg2, angle)
            if nargin == 3
                obj.leg1 = leg1;
                obj.leg2 = leg2;
                obj.angle = angle;
            else
                error("Invalid number of input arguments")
            end
        end

        function a = area(obj)
            a = 1/2 * (obj.leg2 * obj.leg1 * sin(obj.angle));
        end

        function p = perimeter(obj)
            p = obj.leg1 + obj.leg2 + (obj.leg1 * sin(obj.angle) ...
                / sin(atan((obj.leg1 * sin(obj.angle))/(obj.leg2 - ...
                (obj.leg1 * sin(obj.angle)/tan(obj.angle))))));
        end
    end
end