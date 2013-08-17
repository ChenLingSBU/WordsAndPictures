% read all the files in one folder, return the lexicon
% here, the element of lexicon is not unique, and in no order.
% we will use another function to unique and order the lexicon(with frecuency)

function [lexicon] = readAll_files(databaseDirectory,stopWord,linuxWord)
[files,lenOfFiles] = list_textFiles(databaseDirectory);
lexicon = cell.empty;
for n = 1:lenOfFiles
    elemNum = size(lexicon,2);
    file_name = strcat(databaseDirectory, files(n).name);
    fid = fopen(file_name, 'r');
    [tmp_lexicon] = readFile(fid,stopWord,linuxWord);
    lexicon(elemNum+1:elemNum+size(tmp_lexicon,2)) = tmp_lexicon(:);
    fclose(fid);
end
end

