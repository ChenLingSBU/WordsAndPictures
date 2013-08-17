% order the element of original_lexicon in descend order.(frecuency)
function [lexicon] = order_lexicon( original_lexicon )
[lexicon, freq,index] = unique(original_lexicon);
freq = histc(index, 1:length(freq));
[freq, idx] = sort(freq,'descend'); 
tmp_lexicon = lexicon;
for i = 1:length(idx)
    tmp_lexicon(i) = lexicon(idx(i));
end
lexicon = tmp_lexicon;
end

