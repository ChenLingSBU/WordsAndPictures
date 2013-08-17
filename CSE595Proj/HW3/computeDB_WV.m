% word vector for every image in database
% each vector is normlized
function [images] = computeDB_WV(databaseDirectory,images,lexicon)
%[DBfiles, lenOfFiles] = list_textFiles(databaseDirectory);
for i=1:length(images)
    file_name = get_path(databaseDirectory, images(i));
    fid = fopen(file_name,'r');
    [tmp_fileLexicon, location] = computeFile_WV(fid, lexicon);
    images(i).wordVector = norm_wordVector(get_wordVector(tmp_fileLexicon, location, length(lexicon)));
    fclose(fid);
end
end

