% ECEF frame %
% Question data % 
u_o = 100; % ft/s %
a_x = 25; % ft/s^2 %
a_y = 50; % ft/s^2 %
% Time in second %
t = 0:.1:100;
% ECEF x direction velocity %
u_i = u_o + a_x * t;
% ECEF y direction velocity %
v_i = a_y * t;
% ECEF z direction velocity %
w_i = zeros(length(t));
% ECEF x direction location %
x_i = u_o * t + 1 / 2 * a_x * t.^2;
% ECEF y direction location %
y_i = 1 / 2 * a_y * t.^2;
% ECEF z direction location %
z_i = zeros(length(t));
% Ploter %
% ECEF x direction location %
figure1 = figure('NumberTitle','off');
plot(t, x_i, 'LineWidth',2)
xlabel('$Time$','Interpreter','latex')
ylabel('$X(ft)$','Interpreter','latex')
% ECEF y direction location %
figure2 = figure('NumberTitle','off');
plot(t, y_i, 'LineWidth',2)
xlabel('$Time$','Interpreter','latex')
ylabel('$Y(ft)$','Interpreter','latex')
% ECEF z direction location %
figure3 = figure('NumberTitle','off');
plot(t, z_i, 'LineWidth',2)
xlabel('$Time$','Interpreter','latex')
ylabel('$Z(ft)$','Interpreter','latex')
% ECEF x direction velocity %
figure4 = figure('NumberTitle','off');
plot(t, u_i, 'LineWidth',2)
xlabel('$Time$','Interpreter','latex')
ylabel('$U(ft^2)$','Interpreter','latex')
% ECEF y direction velocity %
figure5 = figure('NumberTitle','off');
plot(t, v_i, 'LineWidth',2)
xlabel('$Time$','Interpreter','latex')
ylabel('$V(ft^2)$','Interpreter','latex')
% ECEF z direction velocity %
figure6 = figure('NumberTitle','off');
plot(t, w_i, 'LineWidth',2)
xlabel('$Time$','Interpreter','latex')
ylabel('$W(ft^2)$','Interpreter','latex')
% Printer %
print(figure1, 'X location.png','-dpng','-r300');
print(figure2, 'Y location.png','-dpng','-r300');
print(figure3, 'Z location.png','-dpng','-r300');
print(figure4, 'X velocity.png','-dpng','-r300');
print(figure5, 'Y velocity.png','-dpng','-r300');
print(figure6, 'Z velocity.png','-dpng','-r300');