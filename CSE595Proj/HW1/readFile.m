% read one sigle file, and generate the word lexicon for this file.
function [tmp_lexicon] = readFile(file_id,stopWord,linuxWord)
tmp_lexicon = cell.empty;
word = cell.empty;
while ~feof(file_id)
    tmp_word = getw(file_id);
    if isWord_valid(tmp_word,stopWord,linuxWord) == 1
        word = tmp_word;
    end
    if ~isempty(word)
        elemNum = size(tmp_lexicon,2);
        tmp_lexicon(elemNum+1) = {word};
        word = cell.empty;
    end
end
end

