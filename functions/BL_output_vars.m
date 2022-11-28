function outputs = BL_output_vars(t,x,y,xdot)

outputs.x = x;
outputs.t = t;

outputs.alpha           = y(1,:);
outputs.q               = y(2,:);
outputs.qR              = y(3,:);
outputs.R               = y(4,:);
outputs.alpha_cr        = y(5,:);
outputs.theta           = y(6,:);
outputs.theta_min       = y(7,:);
outputs.theta_max       = y(8,:);
outputs.S               = y(9,:);
outputs.alpha1_n        = y(10,:);
outputs.alpha1_m        = y(11,:);
outputs.alpha1_c        = y(12,:);
outputs.alpha2_n        = y(13,:);
outputs.alpha2_m        = y(14,:);
outputs.alpha2_c        = y(15,:);
outputs.dalpha_n        = y(16,:);
outputs.dalpha_m        = y(17,:);
outputs.dalpha_c        = y(18,:);
outputs.f_n             = y(19,:);
outputs.f_m             = y(20,:);
outputs.f_c             = y(21,:);
outputs.fprime_n        = y(22,:);
outputs.fprime_m        = y(23,:);
outputs.fprime_c        = y(24,:);
outputs.Tf_n            = y(25,:);
outputs.Tf_m            = y(26,:);
outputs.Tf_c            = y(27,:);
outputs.Ta_theta        = y(28,:);
outputs.alpha_C         = y(29,:);
outputs.c_n             = y(30,:);
outputs.c_nC            = y(31,:);
outputs.c_nI            = y(32,:);
outputs.c_nf            = y(33,:);
outputs.c_nv            = y(34,:);
outputs.c_m             = y(35,:);
outputs.c_mC            = y(36,:);
outputs.c_mI            = y(37,:);
outputs.c_mf            = y(38,:);
outputs.c_mv            = y(39,:);
outputs.dCP             = y(40,:);
outputs.c_c             = y(41,:);
outputs.RD_tv0          = y(42,:);
outputs.f_diff_tv0      = y(43,:);
outputs.TvL_tv0         = y(44,:);
outputs.f_diff_tv0_2    = y(45,:);
outputs.c_l = outputs.c_n.*cos(outputs.alpha)+outputs.c_c.*sin(outputs.alpha);
outputs.c_d = outputs.c_n.*sin(outputs.alpha)-outputs.c_c.*cos(outputs.alpha);

outputs.alpha_lag = x(9,:);
outputs.f2prime_n = x(10,:);
outputs.f2prime_m = x(11,:);
outputs.f2prime_c = x(12,:);
outputs.RD = x(13,:);
outputs.RD_theta = x(14,:);

end