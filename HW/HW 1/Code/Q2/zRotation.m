function [RotationMatrix] = zRotation(angle)
angle = angle / 180 * pi;
RotationMatrix = [  cos(angle)  sin(angle)   0;
                   -sin(angle)  cos(angle)   0;
                        0           0        1];
  