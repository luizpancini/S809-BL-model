clear
close all

%%
M = 0.150;
switch M
    case 0.075
        % At M = 0.075
        alpha = [-20.1,-18.1,-16.1,-14.2,-12.2,-10.1,-8.2,-6.1,-4.1,-2.1,0.1,2.0,4.1,6.2,8.1,10.2,11.3,12.1,13.2,14.2,15.3,16.3,17.1,18.1,19.1,20.1,22.0,24.1,26.2,28.0,30.1,32.0,34.1,36.2,38.0,40.0];
        c_l = [-0.56,-0.67,-0.79,-0.84,-0.70,-0.63,-0.56,-0.64,-0.42,-0.21,0.05,0.30,0.54,0.79,0.90,0.93,0.92,0.95,0.99,1.01,1.02,1.00,0.94,0.85,0.70,0.66,0.70,0.79,0.88,0.96,1.05,1.12,1.18,1.19,1.23,1.25];
        c_d = [0.3027,0.3069,0.1928,0.0898,0.0553,0.0390,0.0233,0.0112,-0.004,-0.0003,-0.0029,0.0056,0.0067,0.0085,0.0127,0.0274,0.0303,0.0369,0.0509,0.0648,0.0776,0.0917,0.0994,0.2306,0.3142,0.3186,0.3694,0.4457,0.5260,0.6042,0.7005,0.7908,0.8940,0.9647,1.0523,1.1403];
        c_m = -[-0.0612,-0.0904,-0.0293,0.0090,0.0045,0.0044,0.0051,-0.0018,0.0216,0.0282,0.0346,0.0405,0.0455,0.0507,0.0404,0.0321,0.0281,0.0284,0.0322,0.0361,0.0363,0.0393,0.0398,0.0983,0.1242,0.1155,0.1265,0.1488,0.1723,0.1949,0.2229,0.2490,0.2779,0.2916,0.3171,0.3391];
        M_str = "0075";
    case 0.150
        % At M = 0.075
        alpha = [-20.1,-18.0,-16.1,-14.2,-12.2,-10.2,-8.1,-6.2,-4.1,-2.0,0.0,2.1,4.1,6.1,8.1,10.2,11.2,12.2,13.2,14.1,15.2,16.2,17.2,18.2,19.0,20.2,22.2,24.0];
        c_l = [-0.60,-0.59,-0.79,-0.77,-0.70,-0.62,-0.58,-0.58,-0.40,-0.14,0.11,0.34,0.60,0.79,0.92,0.95,0.94,1.00,1.03,1.05,1.06,1.03,0.96,0.90,0.88,0.85,0.71,0.78];
        c_d = [0.3210,0.2866,0.1241,0.0642,0.0550,0.0361,0.0314,0.0208,0.0018,0.0008,0.0004,0.0027,0.0026,0.0035,0.0079,0.0209,0.0252,0.0397,0.0479,0.0608,0.0744,0.0838,0.1073,0.1429,0.1733,0.2020,0.3767,0.4369];
        c_m = -[-0.0777,-0.0785,0.0040,0.0074,0.0034,0.0081,-0.0042,-0.0073,0.0232,0.0311,0.0366,0.0430,0.0490,0.0484,0.0381,0.0392,0.0321,0.0376,0.0380,0.0398,0.0426,0.0415,0.0504,0.0658,0.0790,0.0870,0.1285,0.1439];
        M_str = "0150";
end
% Airfoil-axes coefficients        
c_n = c_l.*cosd(alpha)+c_d.*sind(alpha);
c_c = c_l.*sind(alpha)-c_d.*cosd(alpha);

%% Plot
figure;plot(alpha,c_l,'k-o');grid;ylabel('cl');
figure;plot(alpha,c_m,'k-o');grid;ylabel('cm');
figure;plot(alpha,c_d,'k-o');grid;ylabel('cd');
figure;plot(alpha,c_n,'k-o');grid;ylabel('cn');
figure;plot(alpha,c_c,'k-o');grid;ylabel('cc');

%% Save
base_filename = "S809_static_M_";
filename = base_filename + M_str + ".mat";
save(filename,'alpha','c_l','c_d','c_m','c_n','c_c');