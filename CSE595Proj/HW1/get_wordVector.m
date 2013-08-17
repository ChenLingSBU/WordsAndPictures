% process the file_lexicon got from computeFile_WV function
% the ouput is real word vector only contains numbers.
% file_lexicon has the chance to be an empty cell.
% lenofLexicon is the lenghth of lexicon.
function [wordVector] = get_wordVector(file_lexicon,location,lenOfLexicon)
wordVector  = zeros(1, lenOfLexicon);
if ~isempty(file_lexicon)
    [file_lexicon, preIdx, idx] = unique(file_lexicon);
    freq = histc(idx, 1:length(preIdx));
    for i = 1:length(preIdx)
        wordVector(location(preIdx(i))) = freq(i);
    end
end

end

