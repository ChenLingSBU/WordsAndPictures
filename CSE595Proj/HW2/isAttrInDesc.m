% check whether the attribute is in the description file. 
% return true if it is in 
% otherwise return false
function [tf] = isAttrInDesc(attribute, lexicon)
attribute = lower(attribute);
if ismember(attribute, lexicon)
    tf = true;
else
    tf = false;
end
end

