% svm training part
% 1. use corss validation to find out the optimized c and g. 
% 2. use this optimized c and g to train all training images for each
% atttribute. 
% 3. use the model we get in last step to predict testing images.

function [bestacc, bestc,bestg,cmd] = find_bestSVMcg(tmp_training_vector, tmp_training_instance, tmp_tuning_vector, tmp_tuning_instance)
[bestacc, bestc, bestg] = SVMcg(tmp_training_vector,tmp_training_instance);
cmd = ['-c ',num2str(bestc),' -g ',num2str(bestg),' -b ', num2str(1)];
model = svmtrain(tmp_training_vector, tmp_training_instance, cmd);
[predict_label, accuracy, prob_estimates] = svmpredict(tmp_tuning_vector, tmp_tuning_instance,model,'-b 1');
end

