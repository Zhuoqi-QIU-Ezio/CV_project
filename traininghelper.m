% comment out the following 3 lines after first execution
  load('training_data.mat');
  load('target_data.mat');
  load('blocked_frame_matrix.mat');



% set parameters: paras = [frame, row,col, type]
% type: 1 = nothing:
%       2 = red
%       3 = blue
%       ...
paras = [665 13 10 3];

% the function will return : training: 100*1 data vector
[training, target] = trainingdatagenerator(blocked_frame_matrix, paras);

% attach training and target data to training_data and target_data
training_data = [training_data training];
target_data = [target_data target];

% save the training and target data.
save('training_data.mat','training_data','-v7.3');
save('target_data.mat','target_data','-v7.3');


