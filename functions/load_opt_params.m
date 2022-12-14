function [alpha_0L,alpha_ds0,alpha_ss,alpha1_0n,alpha1_0m,alpha1_0c,alpha2_0n,alpha2_0m,alpha2_0c,beta_S1n_u,beta_S1m_u,beta_S1c_u,beta_S1n_d,beta_S1m_d,beta_S1c_d,beta_S2n_u,beta_S2m_u,beta_S2c_u,beta_S2n_d,beta_S2m_d,beta_S2c_d,beta_S3n_u,beta_S3m_u,beta_S3c_u,beta_S3n_d,beta_S3m_d,beta_S3c_d,gamma_v,delta_alpha_0,delta_alpha_1,delta_alpha_u,eta,kappa_0,kappa_1,kappa_2,kappa_3,lambda_1,lambda_2,nu_1,nu_2,nu_3,nu_4,chi_v,c_d0,c_m0,c_n_alpha,d_cc,d_cm,E1,f0_n,f0_m,f0_c,fb1_n,fb1_m,fb1_c,fb2_n,fb2_m,fb2_c,g_v,K0,K1,K2,r0,S1,S1_c,S2,S3,S3_c,Ta,Tf,Tv,Vm,Vn1,Vn2,z_cc,z_cm,x_ac] = load_opt_params(filepath)

load(filepath,'bestParams');

alpha_0L = bestParams.alpha_0L;
alpha_ds0 = bestParams.alpha_ds0;
alpha_ss = bestParams.alpha_ss;
alpha1_0n = bestParams.alpha1_0n;
alpha1_0m = bestParams.alpha1_0m;
alpha1_0c = bestParams.alpha1_0c;
alpha2_0n = bestParams.alpha2_0n;
alpha2_0m = bestParams.alpha2_0m;
alpha2_0c = bestParams.alpha2_0c;
beta_S1n_u = bestParams.beta_S1n_u;
beta_S1m_u = bestParams.beta_S1m_u;
beta_S1c_u = bestParams.beta_S1c_u;
beta_S1n_d = bestParams.beta_S1n_d;
beta_S1m_d = bestParams.beta_S1m_d;
beta_S1c_d = bestParams.beta_S1c_d;
beta_S2n_u = bestParams.beta_S2n_u;
beta_S2m_u = bestParams.beta_S2m_u;
beta_S2c_u = bestParams.beta_S2c_u;
beta_S2n_d = bestParams.beta_S2n_d;
beta_S2m_d = bestParams.beta_S2m_d;
beta_S2c_d = bestParams.beta_S2c_d;
beta_S3n_u = bestParams.beta_S3n_u;
beta_S3m_u = bestParams.beta_S3m_u;
beta_S3c_u = bestParams.beta_S3c_u;
beta_S3n_d = bestParams.beta_S3n_d;
beta_S3m_d = bestParams.beta_S3m_d;
beta_S3c_d = bestParams.beta_S3c_d;
gamma_v = bestParams.gamma_v;
delta_alpha_0 = bestParams.delta_alpha_0;
delta_alpha_1 = bestParams.delta_alpha_1;
delta_alpha_u = bestParams.delta_alpha_u;
eta = bestParams.eta;
kappa_0 = bestParams.kappa_0;
kappa_1 = bestParams.kappa_1;
kappa_2 = bestParams.kappa_2;
kappa_3 = bestParams.kappa_3;
lambda_1 = bestParams.lambda_1;
lambda_2 = bestParams.lambda_2;
nu_1 = bestParams.nu_1;
nu_2 = bestParams.nu_2;
nu_3 = bestParams.nu_3;
nu_4 = bestParams.nu_4;
chi_v = bestParams.chi_v;
c_d0 = bestParams.c_d0;
c_m0 = bestParams.c_m0;
c_n_alpha = bestParams.c_n_alpha;
d_cc = bestParams.d_cc;
d_cm = bestParams.d_cm;
E1 = bestParams.E1;
f0_n = bestParams.f0_n;
f0_m = bestParams.f0_m;
f0_c = bestParams.f0_c;
fb1_n = bestParams.fb1_n;
fb1_m = bestParams.fb1_m;
fb1_c = bestParams.fb1_c;
fb2_n = bestParams.fb2_n;
fb2_m = bestParams.fb2_m;
fb2_c = bestParams.fb2_c;
g_v = bestParams.g_v;
K0 = bestParams.K0;
K1 = bestParams.K1;
K2 = bestParams.K2;
r0 = bestParams.r0;
S1 = bestParams.S1;
S1_c = bestParams.S1_c;
S2 = bestParams.S2;
S3 = bestParams.S3;
S3_c = bestParams.S3_c;
Ta = bestParams.Ta;
Tf = bestParams.Tf;
Tv = bestParams.Tv;
Vm = bestParams.Vm;
Vn1 = bestParams.Vn1;
Vn2 = bestParams.Vn2;
z_cc = bestParams.z_cc;
z_cm = bestParams.z_cm;
x_ac = 0.25-K0;

end