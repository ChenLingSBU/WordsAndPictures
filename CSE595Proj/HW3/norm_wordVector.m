% this function is used to normlize the word vector
function [wordVector] = norm_wordVector(wordVector)
wordVector = wordVector./sum(wordVector);
end

