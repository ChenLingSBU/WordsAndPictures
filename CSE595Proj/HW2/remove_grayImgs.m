% remove gray pics
function [files] = remove_grayImgs(databaseDirectory, files)
count = 1;
for i = 1:length(files)
    im = imread(fullfile(databaseDirectory, files(i).name));
    if size(im,3) > 1  %not gray pics
        tmp_files(count) = files(i);
        count = count + 1;
        fprintf('%s is not gray image\n', files(i).name);
    end
    if size(im,3) < 3
        fprintf('%s is gray image, removing',files(i).name);
    end
end
files = tmp_files;
end

