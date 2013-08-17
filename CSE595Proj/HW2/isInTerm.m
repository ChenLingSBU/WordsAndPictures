% judge whether there is term in the image's description. 
% tf = true or false. 
% counts is the number of the term that is in this file lexicon. 
% return tf, and the number of terms in this image description
function [tf,counts] = isInTerm(lexicon, terms)
counts = 0;
tmp_tf = ismember(lexicon, terms);
len = length(tmp_tf);
for i = 1:len
    if tmp_tf(i) == 1
        counts = counts + 1;
    end
end
if counts == 0
    tf = false;
else
    tf = true;
end
end

