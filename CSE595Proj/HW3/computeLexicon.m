%¡¡get the ordered lexicon in descend order(with frecuency)
function [lexicon] = computeLexicon(databaseDirectory, stopWord,linuxWord)
if exist('lexicon.mat','file')
    load lexicon.mat
else
    original_lexicon = readAll_files(databaseDirectory,stopWord,linuxWord);
    lexicon = order_lexicon(original_lexicon);
end
end
  
  


  