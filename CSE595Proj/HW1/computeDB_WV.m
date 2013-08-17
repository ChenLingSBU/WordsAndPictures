% word vector for every image in database
% each vector is normlized
function [DBfiles] = computeDB_WV(databaseDirectory,lexicon)
[DBfiles, lenOfFiles] = list_textFiles(databaseDirectory);
for i=1:length(DBfiles)
    file_name = strcat(databaseDirectory, DBfiles(i).name);
    fid = fopen(file_name,'r');
    [tmp_fileLexicon, location] = computeFile_WV(fid, lexicon);
    DBfiles(i).wordVector = norm_wordVector(get_wordVector(tmp_fileLexicon, location, length(lexicon)));
    fclose(fid);
end
end