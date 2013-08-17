% find image's description file
% input is image's file name
% output is the description file associated with the image.
function [desc_name] = find_descFile(img_name)
desc_name = strcat('descr', img_name(4:size(img_name,2)));
desc_name(size(desc_name,2)-2 : size(desc_name,2)) = 'txt';
end

