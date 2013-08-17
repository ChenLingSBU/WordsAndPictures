% check whether image is in training set. 
% return true if in training set
% otherwise return false
function [tf] = isInTrainingSet(file)
if strcmp(file.label, 'training')
    tf = true;
else
    tf = false;
end
end

