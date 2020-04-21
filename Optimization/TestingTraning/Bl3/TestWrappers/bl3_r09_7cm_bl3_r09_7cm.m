function [error_value] = bl3_r09_7cm_bl3_r09_7cm ( InitVar ); load("bl3_r09_7cm.mat");params.kss=1394.6842;params.kts=999.9026;params.Cts=0.17378;params.Cce_L=27.5915;params.Cce_S=7.6311;params.act_factor=0.21448;params.Cts_L=0;params.T_act=34;params.penation_angle=0.41888;params.Po=101.4;params.Lo=0.018;params.M=0.008;stim = wfm9( data, params);error_value =  Rsquared(transpose(stim.forces.Fm(1000:length(stim.forces.Fm))),transpose(data.force(1000:length(data.force))));disp(["Rsquared "  num2str(error_value)]); end