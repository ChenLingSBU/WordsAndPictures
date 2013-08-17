% This function is used to list images in ascending order.
% Due to the images' name, if just read in images using 
% defualt order, the order is not correct ascending order.
%Before read images, we need to reorgnize these images.

% The output of this function is an array cell, storing the images'
% name in correct ascending order. 

% thoese images are in one folder. 
function [images_name] = list_images(databaseDirectory, directory)
list = dir(fullfile(databaseDirectory, directory,'*.jpg'));
images_name = {list.name};
% eg: img_bag_clutch_1.jpg   here 1.jpg is Postfix
% and the length of Postfix is lenOfPrefix, and it's 5. 
lenOfPostfix = 5;
lenOfPrefix = length(list(1).name) - lenOfPostfix;
strr = strcat(list(1).name(1:lenOfPrefix),'%d.jpg#');
str  = sprintf('%s#', images_name{:});
num  = sscanf(str, strr);
[dummy, index] = sort(num);
images_name = images_name(index);
end

