syms cm0 cm_ac_wb x_cg x_ac_wb ...
     cl0_wb cl_alpha_wb H cm_alpha x_ac_H IH c_m_ih DeltaE cm_delta_E ...
     c_ls cl_delta_E Delta cl_alpha ih;
cm0 = cm_ac_wb + cl0_wb * (x_cg - x_ac_wb);
cm_alpha = cl_alpha_wb * (x_cg - x_ac_wb) - H * (x_ac_H - x_cg);
c_m_ih = -IH * (x_ac_H - x_cg);
cm_delta_E = -DeltaE * (x_ac_H - x_cg);
eq = Delta == (-cl_alpha * (cm0 * c_m_ih * ih) - ...
    cm_alpha * (c_ls)) / (cl_alpha * cm_delta_E - cm_alpha * cl_delta_E);
x_cgSol = solve(eq, x_cg);

