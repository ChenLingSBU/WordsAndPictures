% combine word vector and visual histgoram together for each image
function [images] = combine_word_visual(images)
len = length(images);
for i = 1:len
    images(i).hist = [images(i).hist images(i).wordVector(1:100)];
    fprintf('combine word histogram and visual histgraom for : %s\n', images(i).name);
end

end

