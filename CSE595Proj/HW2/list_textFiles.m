% list all the txt files that in databaseDirectory


function [files,lenOfFiles] = list_textFiles(databaseDirectory)
files = dir(fullfile(databaseDirectory,'descr_*.txt'));
lenOfFiles = length(files);
end

