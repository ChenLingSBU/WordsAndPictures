% read all images' description files
% and return trainingData and testingData
function [files] = readAll_files(databaseDirectory,terms)
[files, lenOfFiles] = list_textFiles(databaseDirectory);
% trainingData = cell.empty;
% testingData = cell.empty;
for i = 1 : lenOfFiles
    file_name = strcat(databaseDirectory, files(i).name);
    fid = fopen(file_name,'r');
    [tmp_lexicon] = readFile(fid);
    [tf, counts] = isInTerm(tmp_lexicon, terms);
    if tf && counts == 1  % only exactly one term
        %elemNumTr = size(trainingData, 2);
        %trainingData(elemNumTr + 1) = {find_imgFile(files(i).name)};
        files(i).label = 'training';
        files(i).name = find_imgFile(files(i).name);
    else
        %elemNumTe = size(testingData, 2);
        %testingData(elemNumTe + 1) = {find_imgFile(files(i).name)};
        files(i).label = 'testing';
        files(i).name = find_imgFile(files(i).name);
    end
    fclose(fid);
end
end

