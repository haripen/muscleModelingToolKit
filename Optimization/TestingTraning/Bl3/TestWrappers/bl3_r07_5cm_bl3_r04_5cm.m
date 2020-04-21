function [error_value] = bl3_r07_5cm_bl3_r04_5cm ( InitVar ); load("bl3_r07_5cm.mat");params.kss=2181.6874;params.kts=999.9577;params.Cts=0.22324;params.Cce_L=36.4263;params.Cce_S=9.5629;params.act_factor=0.22403;params.Cts_L=0;params.T_act=34;params.penation_angle=0.41888;params.Po=101.4;params.Lo=0.018;params.M=0.008;stim = wfm9( data, params);error_value =  Rsquared(transpose(stim.forces.Fm(1000:length(stim.forces.Fm))),transpose(data.force(1000:length(data.force))));disp(["Rsquared "  num2str(error_value)]); end