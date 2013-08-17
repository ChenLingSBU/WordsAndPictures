% list top 200 mostlikely pictures' index into one vector
function [top_similar] = get_topSimilar(prob_estimates, predict_label)
dim = judge_which_positive(prob_estimates, predict_label);
[prob idx] = sort(prob_estimates(:,dim), 'descend');
top_similar = idx(1:200);
end

