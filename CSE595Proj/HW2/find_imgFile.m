% find description's associated image'name
% input is description file name
% output is the associated image's name
function [img_name] = find_imgFile(desc_name)
img_name = strcat('img', desc_name(6:size(desc_name, 2)));
img_name(size(img_name,2)-2 : size(img_name,2)) = 'jpg';
end

