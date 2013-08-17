% compute the 10 most similar images based on SSD
function [closestMatches] = top_similarPics(SSD,DBfiles)
[AscSort, idx] = sort(SSD);
index = idx(1:10);
for i = 1:length(index)
    len = length(DBfiles(index(i)).name);
    if ~strcmp(DBfiles(index(i)).name(len), 'g')
        closestMatches(i) = {find_imgFile(DBfiles(index(i)).name)};
    else
        closestMatches(i) = {DBfiles(index(i)).name};
    end
end
end

