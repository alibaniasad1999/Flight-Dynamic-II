function [RotationMatrix] = yRotation(angle)
angle = angle / 180 * pi;
RotationMatrix = [cos(angle) 0 -sin(angle) ;
                      0      1       0     ;
                  sin(angle) 0  cos(angle)];
