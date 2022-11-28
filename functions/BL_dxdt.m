function [xdot,tv0,t_ub,t_db,alpha,q,R,alpha_lag,alpha_cr,dalpha_n,dalpha_db,fprime_n,fprime_m,fprime_c,fprime_n_db,fprime_m_db,fprime_c_db,RD_ub,RD_db,theta_c_db,RD_tv0,f_diff_tv0,Tv_tv0,theta_tv0,f_diff_tv0_2,f_diff_tv0_3,V2F,V3F] = ...
          BL_dxdt(t,x,xdot,t_i,tv0,t_ub,t_db,RD_tv0,f_diff_tv0,Tv_tv0,theta_tv0,f_diff_tv0_2,f_diff_tv0_3,V2F,V3F,alpha_lag_i,alpha_cr_i,theta_i,R_i,upstroke_i,S_i,T_flag_downstroke_i,theta_max_i,theta_min_i,RD_m_i,R_max_i,dalpha_n_i,dalpha_db_i,fprime_n_i,fprime_m_i,fprime_c_i,fprime_n_db_i,fprime_m_db_i,fprime_c_db_i,RD_ub_i,RD_db_i,theta_c_db_i,A,U,b,ah,a_0,a_1,k,alpha1_0n,alpha1_0m,alpha1_0c,alpha2_0n,alpha2_0m,alpha2_0c,alpha_ds0,alpha_ss,beta_S1n_u,beta_S1m_u,beta_S1c_u,beta_S1n_d,beta_S1m_d,beta_S1c_d,beta_S2n_u,beta_S2m_u,beta_S2c_u,beta_S2n_d,beta_S2m_d,beta_S2c_d,beta_S3n_u,beta_S3m_u,beta_S3c_u,beta_S3n_d,beta_S3m_d,beta_S3c_d,gamma_v,delta_alpha_0,delta_alpha_1,delta_alpha_u,lambda_1,lambda_2,d_cm,d_cc,f0_n,f0_m,f0_c,fb1_n,fb1_m,fb1_c,fb2_n,fb2_m,fb2_c,g_v,r0,S1,S1_c,S2,S3,S3_c,Ta,Tf,Tv,z_cm,z_cc)

%% Kinematics
[alpha,alpha_tqc,q,qR,R] = BL_kinematics(t,U,b,ah,k,a_0,a_1,r0);

%% States
alpha_lag = x(9);
f2prime_n = x(10);
RD = x(13);
RD_theta = x(14);

%% Stall onset criterion, stall and motion qualifiers
[alpha_cr,theta,theta_max,theta_min,RD_m,R_max,S,upstroke,downstroke_beginning,stall_beginning,in_stall,T_flag_downstroke,t_ub,t_db,T_ub,T_db,RD_ub,RD_db,T_s,theta_c,theta_c_db] = BL_stall_onset(t,t_ub,t_db,tv0,RD_ub_i,RD_db_i,theta_c_db_i,RD_tv0,theta_i,alpha_lag_i,R_i,upstroke_i,S_i,T_flag_downstroke_i,theta_max_i,theta_min_i,RD_m_i,R_max_i,alpha_lag,q,R,RD,RD_theta,alpha_ds0,alpha_ss,alpha1_0c,Tf);

%% Unsteady breakpoint of separation angles
[alpha1_n,alpha1_m,alpha1_c,alpha2_n,alpha2_m,alpha2_c,dalpha_n,dalpha_m,dalpha_c,dalpha_db] = BL_alpha_brk(qR,R,RD_theta,S,upstroke,downstroke_beginning,dalpha_n_i,dalpha_db_i,alpha1_0n,alpha1_0m,alpha1_0c,alpha2_0n,alpha2_0m,alpha2_0c,delta_alpha_0,delta_alpha_1,delta_alpha_u,d_cm,d_cc,z_cm,z_cc);
  
%% Separation points
[f_n,f_m,f_c,fprime_n,fprime_m,fprime_c,fprime_n_db,fprime_m_db,fprime_c_db] = BL_sep_points(alpha,alpha_lag,alpha1_n,alpha1_m,alpha1_c,alpha2_n,alpha2_m,alpha2_c,upstroke,downstroke_beginning,R,RD,S,fprime_n_i,fprime_m_i,fprime_c_i,fprime_n_db_i,fprime_m_db_i,fprime_c_db_i,T_db,T_s,T_flag_downstroke,alpha1_0n,alpha1_0m,alpha1_0c,alpha2_0n,alpha2_0m,alpha2_0c,f0_n,f0_m,f0_c,fb1_n,fb1_m,fb1_c,fb2_n,fb2_m,fb2_c,S1,S1_c,S2,S3,S3_c,beta_S1n_u,beta_S1m_u,beta_S1c_u,beta_S1n_d,beta_S1m_d,beta_S1c_d,beta_S2n_u,beta_S2m_u,beta_S2c_u,beta_S2n_d,beta_S2m_d,beta_S2c_d,beta_S3n_u,beta_S3m_u,beta_S3c_u,beta_S3n_d,beta_S3m_d,beta_S3c_d);

%% Find time of stall onset
[tv0,tau_v,f_diff_tv0,RD_tv0,Tv_tv0,theta_tv0,f_diff_tv0_2,f_diff_tv0_3,V2F,V3F] = BL_stall_time(stall_beginning,tv0,theta_tv0,f_diff_tv0,RD_tv0,Tv_tv0,f_diff_tv0_2,f_diff_tv0_3,V2F,V3F,t_i,alpha_lag_i,alpha_cr_i,t,alpha_lag,alpha_cr,theta,RD,f_n,f2prime_n,upstroke,gamma_v,g_v,Tv);

%% Time delay constants variation
[Tf_n,Tf_m,Tf_c,Ta_theta] = BL_time_constants(theta,R,RD,Ta,Tf,lambda_1,lambda_2);

%% State-space
xdot = BL_state_space(x,xdot,alpha,alpha_tqc,q,R,A,Tf_n,Tf_m,Tf_c,Ta,fprime_n,fprime_m,fprime_c,Ta_theta);

end