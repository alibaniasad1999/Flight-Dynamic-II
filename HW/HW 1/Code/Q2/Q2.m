% angles and Degree 
% angle of attack
theta = 20;
% sideslip angle
psi = 10;
% bank angle
phi = 10;
RotationMatrixB2T = zRotation(-psi) * yRotation(-theta) * xRotation(-phi);
% Forces lb
F_x =  21.7;
F_y = -33.0;
F_z = -91.0;
F = [F_x;
     F_y;
     F_z];
RotationMatrixB2S = yRotation(-theta) * xRotation(-phi);
F_s = RotationMatrixB2S * F;