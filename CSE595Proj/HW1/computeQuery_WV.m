% this function is used to compute word vector for every image in query
% directory
function [QueryFiles] = computeQuery_WV(queryDirectory,lexicon)
[QueryFiles, lenOfFiles] = list_textFiles(queryDirectory);
for i = 1:length(QueryFiles)
    file_name = strcat(queryDirectory, QueryFiles(i).name);
    fid = fopen(file_name, 'r');
    [tmp_fileLexicon, location] = computeFile_WV(fid, lexicon);
    QueryFiles(i).wordVector = norm_wordVector(get_wordVector(tmp_fileLexicon, location, length(lexicon)));
    fclose(fid);
end
end

