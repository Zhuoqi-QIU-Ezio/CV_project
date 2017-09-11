function [ train_data, target_data ] = trainingdatagenerator( datametrix, paras)
%TRAININGDATAGENERATOR Summary of this function goes here
%   Detailed explanation goes here
% paras = [frame, row,col, type]

train_data = datametrix(:, (paras(2)-1)*48 + paras(3), paras(1));

target_data = zeros(8,1);
target_data(paras(4),1) = 1;

end

