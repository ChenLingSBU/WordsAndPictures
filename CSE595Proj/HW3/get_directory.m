% get all the directories in the databaseDirectory folder

function [directories] = get_directory(databaseDirectory)
folders = dir(databaseDirectory);
idx = 1;
for i = 3:length(folders)% 1-2 are system files.
    directories(idx) = {folders(i).name};
    idx = idx + 1;
end
end

