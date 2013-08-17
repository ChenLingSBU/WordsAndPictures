% this function is used to generate word vector for every image
function [images] = generate_word_vector(databaseDirectory,images, lexicon)
images = computeDB_WV(databaseDirectory,images,lexicon);
end

