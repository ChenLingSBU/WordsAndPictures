% read descritpion file
function [desc] = read_desFile(filename)
fid = fopen(filename, 'r');
desc = fscanf(fid, '%c', inf);
fclose(fid);
end

