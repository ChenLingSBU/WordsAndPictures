% this function is used to find the most optimized 
function [best_c, best_g] = find_optimized_SVMcg(tmp_training_label, tmp_training_inst, tmp_tuning_label, tmp_tuning_inst)
best_acc = 0;
best_c = 0;
best_g = 0;
for i = 1:10
    for j = 1:10
        cmd =  [' -c ',num2str(i),' -g ',num2str( j)];
        model = svmtrain(tmp_training_label, tmp_training_inst, cmd);
        [predict, curr_acc] = svmpredict(tmp_tuning_label,tmp_tuning_inst,model);
        if curr_acc > best_acc
            best_acc = curr_acc;
            best_c = i;
            best_g = j;
        end
    end
end

fprintf('best_acc is %f, best_c %f, best_g %f \n', best_acc, best_c,best_g);

end

