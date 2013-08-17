% Generate lexicon for all the images
% call computeLexicon function
function [tmp_lexicon] = generate_lexicon(databaseDirectory, stopWord, linuxWord)
directories = get_directory(databaseDirectory);
len_of_directories = length(directories);
tmp_lexicon = 0;
for i = 1:len_of_directories
    lexicon = computeLexicon(fullfile(databaseDirectory, directories{i},'/'),stopWord, linuxWord);
    tmp_lexicon = [tmp_lexicon, lexicon];
end
end

