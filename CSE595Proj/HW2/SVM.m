% apply the best 'c' and 'g' to train all the training images and predict
% all the testing images.
function [predict_label, accuracy, prob_estimates] = SVM(training_label_vector, training_instance_matrix, testing_instance_matrix,cmd)
model = svmtrain(training_label_vector, training_instance_matrix,cmd);
empty_label = zeros(size(testing_instance_matrix,1),1);
[predict_label, accuracy,prob_estimates] = svmpredict(empty_label, testing_instance_matrix, model,'-b 1');
end

