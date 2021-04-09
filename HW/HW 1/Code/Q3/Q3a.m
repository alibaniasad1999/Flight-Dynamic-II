%%% Glider Data %%%
S = 7.43; % m^2
m = 454; % kg
g = 9.8; % m/s^2
% Darg polar Data %
CD0 = 0.01;
K = 0.022;
L_D_max = 1/sqrt(4 * CD0 * K);
syms cl
eq = K * cl + CD0 / cl - 1 / L_D_max;
sol_cl = solve(eq);
sol_cd = K * sol_cl^2 + CD0;
gamma = asin(-1 / L_D_max);
height = (0:5000);
[T, a, P, rho] = atmosisa(height / 3.281);
V_eq = sqrt(2 * m * g * cos(gamma) / sol_cl ./ rho / S);
figure1 = figure('NumberTitle','off');
plot(height, V_eq, 'LineWidth',2);
xlabel('$height(ft)$','Interpreter','latex')
ylabel('$V_{eq}(ft/s^2)$','Interpreter','latex')
print(figure1, 'V_eq.png','-dpng','-r300');