function [error_value] = bl3_r13_Lev_bl3_r07_5cm ( InitVar ); load("bl3_r13_Lev.mat");params.kss=510.8735;params.kts=621.9819;params.Cts=0.071861;params.Cce_L=10.1497;params.Cce_S=0.47928;params.act_factor=0.38965;params.Cts_L=0;params.T_act=34;params.penation_angle=0.41888;params.Po=101.4;params.Lo=0.018;params.M=0.008;stim = wfm9( data, params);error_value =  Rsquared(transpose(stim.forces.Fm(1000:length(stim.forces.Fm))),transpose(data.force(1000:length(data.force))));disp(["Rsquared "  num2str(error_value)]); end