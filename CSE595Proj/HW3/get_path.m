% get description files' path
function [path] = get_path(databaseDirectory,image)
desc_name = find_descFile(image.name);
path = fullfile(databaseDirectory,image.category,desc_name);
end

