% check out whether the word is valid, if invalid, ignore the word.
% valid: in linux word dictionary and not in the stopWord 
% if valid, result = 1, otherwise = -1.
function [result] = isWord_valid(word, stopWord,linuxWord)
if ismember(word,linuxWord) && ~ismember(word,stopWord)
    result = 1;
else
    result = -1;
end

end

