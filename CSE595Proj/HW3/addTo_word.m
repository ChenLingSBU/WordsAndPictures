
% add one single character into a word vector. 

function [word] = addTo_word(word,character)
elemNum = size(word,2);
word(elemNum+1) = character;
end

