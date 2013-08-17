% this function is used to change image to single class and gray image. 
% because the argument of vl_dsift is single and gray required. 
function [gray_image] = rgb2single_gray(image)
if size(image, 3) > 1
    gray_image = single(rgb2gray(image));
else
    gray_image = single(image);
end
end

