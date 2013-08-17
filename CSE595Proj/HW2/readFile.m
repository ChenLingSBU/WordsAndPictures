% read one image's description file, and generate one lexicon for this
% file. 
function [tmp_lexicon] = readFile(file_id)
tmp_lexicon = cell.empty;
while ~feof(file_id)
    tmp_word = getw(file_id);
    if ~isempty(tmp_word)
        elemNum = size(tmp_lexicon,2);
        tmp_lexicon(elemNum+1) = {tmp_word};
    end
end
tmp_lexicon = unique(tmp_lexicon);
end

