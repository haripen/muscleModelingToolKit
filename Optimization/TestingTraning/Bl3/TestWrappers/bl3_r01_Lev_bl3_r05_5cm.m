function [error_value] = bl3_r01_Lev_bl3_r05_5cm ( InitVar ); load("bl3_r01_Lev.mat");params.kss=1298.3622;params.kts=996.9792;params.Cts=0.11464;params.Cce_L=31.758;params.Cce_S=2.0018;params.act_factor=0.3399;params.Cts_L=0;params.T_act=34;params.penation_angle=0.41888;params.Po=101.4;params.Lo=0.018;params.M=0.008;stim = wfm9( data, params);error_value =  Rsquared(transpose(stim.forces.Fm(1000:length(stim.forces.Fm))),transpose(data.force(1000:length(data.force))));disp(["Rsquared "  num2str(error_value)]); end