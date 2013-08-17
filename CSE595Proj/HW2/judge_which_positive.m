% judge which is the positive category from the two dimensional vector
% prob_estimates
% return 1, if it's dim 1, return 2, if it's dim 2
function [dim] =judge_which_positive (prob_estmates, predict_label )
[tf location] = ismember(1, predict_label);
if prob_estmates(location, 1) > prob_estmates(location, 2)
    dim = 1;
else
    dim = 2;
end

end

