% angles and Degree 
% angle of attack
theta = 20;
% sideslip angle
psi = 10;
% bank angle
phi = 10;
RotationMatrix = xRotation(phi) * zRotation(psi) * yRotation(theta);
% Forces lb
F_x =  21.7;
F_y = -33.0;
F_z = -91.0;
