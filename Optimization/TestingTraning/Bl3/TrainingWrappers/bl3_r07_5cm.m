function [error_value] = bl3_r07_5cm ( InitVar ); load("bl3_r07_5cm.mat");params.T_act=35;params.penation_angle=0.41888;params.Po=101.4;params.Lo=0.018;params.M=0.008;params.kss= InitVar (1);params.kts= InitVar (2);params.Cts= InitVar (3);params.Cce_L= InitVar (4);params.Cce_S= InitVar (5);params.act_factor= InitVar (6);stim = wfm9( data, params);error_value =  RMSE(transpose(stim.forces.Fm(1000:length(stim.forces.Fm))),transpose(data.force(1000:length(data.force))));disp(["RMSE "  num2str(error_value)]); end