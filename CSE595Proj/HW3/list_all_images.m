% this function is used to list all the images in the databaseDirectory
function [images] = list_all_images(databaseDirectory)
directories = get_directory(databaseDirectory);
len_of_directories = length(directories);
for i = 1:len_of_directories
    images(i).name = list_images(databaseDirectory, directories{i});
    images(i).category = directories{i};
    images(i).path = fullfile(databaseDirectory, directories{i});
end
end

