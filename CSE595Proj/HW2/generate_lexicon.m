% generate word lexicon for one description file
function [lexicon] = generate_lexicon(databaseDirectory, files)

file_name  = strcat(databaseDirectory, find_descFile(files.name));
fid = fopen(file_name,'r');
lexicon = readFile(fid);
fclose(fid);
end

