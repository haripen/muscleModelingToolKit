function [error_value] = bl3_r10_7cm_bl3_r13_Lev ( InitVar ); load("bl3_r10_7cm.mat");params.kss=987.8695;params.kts=315.909;params.Cts=0.084576;params.Cce_L=20.985;params.Cce_S=0.40598;params.act_factor=0.23557;params.Cts_L=0;params.T_act=34;params.penation_angle=0.41888;params.Po=101.4;params.Lo=0.018;params.M=0.008;stim = wfm9( data, params);error_value =  Rsquared(transpose(stim.forces.Fm(1000:length(stim.forces.Fm))),transpose(data.force(1000:length(data.force))));disp(["Rsquared "  num2str(error_value)]); end