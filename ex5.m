clc; clear;

%% A. Calculul erorii absolute pentru volum V = (4/3) * pi * r^3
r = 2; 
V_error_max = 0.01; 
pi_approx = 3.14; 
dV_dr = 4 * pi_approx * r^2;
delta_r = V_error_max / dV_dr; 

fprintf('A. Eroarea absolută necesară pentru r: %.6f m\n', delta_r);

%% B. Calculul erorii absolute pentru lungimea cercului L = 2 * pi * r
r = 5; 
L_error_max = 0.02; 

dL_dr = 2 * pi_approx;
delta_r = L_error_max / dL_dr; 

fprintf('B. Eroarea absolută necesară pentru r: %.6f cm\n', delta_r);

%% C. Calculul erorii absolute și relative pentru aria unui cerc A = pi * r^2
r = 3;
delta_r = 0.01;

dA_dr = 2 * pi_approx * r;
delta_A = dA_dr * delta_r; 
A = pi_approx * r^2;
delta_A_rel = delta_A / A;

fprintf('C. Eroarea absolută a ariei: %.6f cm²\n', delta_A);
fprintf('   Eroarea relativă a ariei: %.6f\n', delta_A_rel);

%% D. Calculul erorii absolute și relative pentru volumul unui con V = pi * r^2 * h / 3
r = 2;
h = 2;
delta_r = 0.003;
delta_h = 0.001; 

dV_dr = (2/3) * pi_approx * r * h;
dV_dh = (1/3) * pi_approx * r^2;

delta_V = abs(dV_dr * delta_r) + abs(dV_dh * delta_h);

V = (pi_approx * r^2 * h) / 3;
delta_V_rel = delta_V / V;

fprintf('D. Eroarea absolută a volumului conului: %.6f cm³\n', delta_V);
fprintf('   Eroarea relativă a volumului conului: %.6f\n', delta_V_rel);
