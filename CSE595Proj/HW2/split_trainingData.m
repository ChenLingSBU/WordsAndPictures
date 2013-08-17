% get temporary training and tuning data set
% 70% as temporary training set and 30% as tuning data set
function [tmp_training tmp_tuning tmp_training_vector tmp_training_instance tmp_tuning_vector tmp_tuning_instance] =split_trainingData(trainingData,training_label_vector,training_instance_matrix)
len = length(trainingData);
tmp_trlen = round(0.7*len);
tmp_training = trainingData(1:tmp_trlen);
tmp_tuning = trainingData(tmp_trlen+1:len);
tmp_training_vector = training_label_vector(1:tmp_trlen);
tmp_training_instance = training_instance_matrix(1:tmp_trlen,:);
tmp_tuning_vector = training_label_vector(tmp_trlen+1 : len);
tmp_tuning_instance = training_label_vector(tmp_trlen+1:len,:);
end

