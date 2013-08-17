% this function is used to check whether the word 
% we get from description file is in the lexicon

function [result,location] = isWord_inLexicon(word, lexicon)
[result location] = ismember(word, lexicon); 
end

