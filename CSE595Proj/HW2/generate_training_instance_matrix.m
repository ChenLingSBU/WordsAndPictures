% get training_instance_matrix for later SVM use
% training_instance_matrix is m*n matrix
% of m training instances with n features. 
% Be aware:
% reshape 3D matrix of hsv to 2d matrix 
function [training_instance_matrix] =generate_training_instance_matrix(trainingData)
len = length(trainingData);
training_instance_matrix = zeros(len, 10*3);
for i = 1:len
    trainingData(i).img_descr = reshape(trainingData(i).img_descr,[1,30]);
    training_instance_matrix(i,:) = trainingData(i).img_descr;
end
training_instance_matrix = double(training_instance_matrix);
training_instance_matrix = sparse(training_instance_matrix);
end

