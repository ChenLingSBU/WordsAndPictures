% This function is for Part 1
% This function is used to automatically label images as trainingData or
% testing Data
% databaseDirectory is the direcotry for images need to be labeled. 
% terms are the color terms we want. Here are 'black, brown, red, silver, god'
function [files] = label_images(databaseDirectory)
terms = getTerms();
files = readAll_files(databaseDirectory, terms);
end

