function [U,M,b,ah,a_0,a_1,k,beta,A,alpha_0L,alpha_ds0,alpha_ss,alpha1_0n,alpha1_0m,alpha1_0c,alpha2_0n,alpha2_0m,alpha2_0c,beta_S1n_u,beta_S1m_u,beta_S1c_u,beta_S1n_d,beta_S1m_d,beta_S1c_d,beta_S2n_u,beta_S2m_u,beta_S2c_u,beta_S2n_d,beta_S2m_d,beta_S2c_d,beta_S3n_u,beta_S3m_u,beta_S3c_u,beta_S3n_d,beta_S3m_d,beta_S3c_d,gamma_v,delta_alpha_0,delta_alpha_1,delta_alpha_u,eta,kappa_0,kappa_1,kappa_2,kappa_3,lambda_1,lambda_2,nu_1,nu_2,nu_3,nu_4,chi_v,c_d0,c_m0,c_n_alpha,d_cc,d_cm,E1,f0_n,f0_m,f0_c,fb1_n,fb1_m,fb1_c,fb2_n,fb2_m,fb2_c,g_v,K0,K1,K2,r0,S1,S1_c,S2,S3,S3_c,Ta,Tf,Tv,Vm,Vn1,Vn2,x_ac,z_cc,z_cm,A1,A2,A3,A4,b1,b2,b3,b4,b5,K_a,K_aM,K_q,K_qM,T_I] = BL_unpack_params(params)

%% Test condition
U = params.U;
M = params.M;
b = params.b;
ah = params.ah;
a_0 = params.a_0;
a_1 = params.a_1;
k = params.k;
beta = params.beta;

%% Airfoil and Mach-dependent
alpha_0L = params.alpha_0L;
alpha_ds0 = params.alpha_ds0;
alpha_ss = params.alpha_ss;
alpha1_0n = params.alpha1_0n;
alpha1_0m = params.alpha1_0m;
alpha1_0c = params.alpha1_0c;
alpha2_0n = params.alpha2_0n;
alpha2_0m = params.alpha2_0m;
alpha2_0c = params.alpha2_0c;
beta_S1n_u = params.beta_S1n_u;
beta_S1m_u = params.beta_S1m_u;
beta_S1c_u = params.beta_S1c_u;
beta_S1n_d = params.beta_S1n_d;
beta_S1m_d = params.beta_S1m_d;
beta_S1c_d = params.beta_S1c_d;
beta_S2n_u = params.beta_S2n_u;
beta_S2m_u = params.beta_S2m_u;
beta_S2c_u = params.beta_S2c_u;
beta_S2n_d = params.beta_S2n_d;
beta_S2m_d = params.beta_S2m_d;
beta_S2c_d = params.beta_S2c_d;
beta_S3n_u = params.beta_S3n_u;
beta_S3m_u = params.beta_S3m_u;
beta_S3c_u = params.beta_S3c_u;
beta_S3n_d = params.beta_S3n_d;
beta_S3m_d = params.beta_S3m_d;
beta_S3c_d = params.beta_S3c_d;
gamma_v = params.gamma_v;
delta_alpha_0 = params.delta_alpha_0; 
delta_alpha_1 = params.delta_alpha_1;
delta_alpha_u = params.delta_alpha_u;
eta = params.eta;
kappa_0 = params.kappa_0; 
kappa_1 = params.kappa_1; 
kappa_2 = params.kappa_2; 
kappa_3 = params.kappa_3; 
lambda_1 = params.lambda_1; 
lambda_2 = params.lambda_2;
nu_1 = params.nu_1; 
nu_2 = params.nu_2;
nu_3 = params.nu_3;
nu_4 = params.nu_4;
chi_v = params.chi_v;
c_d0 = params.c_d0;  
c_m0 = params.c_m0; 
c_n_alpha = params.c_n_alpha;
d_cc = params.d_cc;
d_cm = params.d_cm;
E1 = params.E1;
f0_n = params.f0_n; 
f0_m = params.f0_m; 
f0_c = params.f0_c;
fb1_n = params.fb1_n;
fb1_m = params.fb1_m;
fb1_c = params.fb1_c;
fb2_n = params.fb2_n;
fb2_m = params.fb2_m;
fb2_c = params.fb2_c;
g_v = params.g_v;
K0 = params.K0; 
K1 = params.K1; 
K2 = params.K2; 
r0 = params.r0; 
S1 = params.S1;
S1_c = params.S1_c; 
S2 = params.S2; 
S3 = params.S3;
S3_c = params.S3_c;
Ta = params.Ta;
Tf = params.Tf;
Tv = params.Tv;
Vm = params.Vm;
Vn1 = params.Vn1; 
Vn2 = params.Vn2;
x_ac = params.x_ac;
z_cc = params.z_cc; 
z_cm = params.z_cm; 

%% Indicial
A = params.A;
A1 = params.A1;
A2 = params.A2;
A3 = params.A3;
A4 = params.A4;
b1 = params.b1;
b2 = params.b2;
b3 = params.b3;
b4 = params.b4;
b5 = params.b5;
K_a = params.K_a; 
K_aM = params.K_aM;
K_q = params.K_q;  
K_qM = params.K_qM; 
T_I = params.T_I;

end