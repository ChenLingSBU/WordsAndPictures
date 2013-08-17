% it's for Part 2. compute image descriptors
function [files] = compute_imageDescriptors(databaseDirectory, files)
fprintf('removing grayIms in databaseDirectory:\n');
files = remove_grayImgs(databaseDirectory, files);
fprintf('computing images'' descriptors:\n');
for i = 1:length(files)
    files(i).img_descr = compute_single_image(databaseDirectory,files(i));
    fprintf('computing descriptors for %s \n', files(i).name);
end
end

