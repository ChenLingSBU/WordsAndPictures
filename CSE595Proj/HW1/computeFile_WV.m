% compute one single file's word vector
% WV == word vector
% word is not unique.
% Be careful, here, if there's no word in lexicon
% Then the tmp_lexicon is empty. 
function [tmp_lexicon, location] = computeFile_WV(file_id, lexicon)
tmp_lexicon = cell.empty;
word = cell.empty;
location = int64.empty;
while ~feof(file_id)
    tmp_word = getw(file_id);
    [tf tmp_location] = isWord_inLexicon(tmp_word,lexicon);
    if tf
        word = tmp_word;
    end
    if ~isempty(word)
        lenOfLocation = size(location,2);
        elemNum = size(tmp_lexicon,2);
        tmp_lexicon(elemNum+1) = {word};
        location(lenOfLocation+1) = tmp_location;
        word = cell.empty;
    end
end
end

