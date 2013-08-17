% compute the closestMatches based on combind SSD
% alpha is in (0,1)
function [closestMatches] = topCom_similarPics(alpha, SSD_Img, SSD_Text,DB_imgs)
SSD_Com = alpha*SSD_Img + (1-alpha)*SSD_Text;
[ascsort, idx] = sort(SSD_Com);
index = idx(1:10);
for i = 1:length(index)
    closestMatches(i) = {DB_imgs(index(i)).name};
end
end

