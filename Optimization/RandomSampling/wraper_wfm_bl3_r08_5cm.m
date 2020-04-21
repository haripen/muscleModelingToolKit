function [error_value] = wraper_wfm_bl3_r08_5cm ( InitVar ); load("bl3_r08_5cm.mat");params.T_act=118;params.penation_angle=0.41888;params.Po=101.4;params.Lo=0.018;params.M=0.008;params.kss= InitVar (1);params.kts= InitVar (2);params.Cts= InitVar (3);params.Cce_L= InitVar (4);params.Cce_S= InitVar (5);params.act_factor= InitVar (6);stim = wfm9( data, params);error_value =  Rsquared(transpose(stim.forces.Fm(1000:length(stim.forces.Fm))),transpose(data.force(1000:length(data.force))));disp(["Rsquared "  num2str(error_value)]); end