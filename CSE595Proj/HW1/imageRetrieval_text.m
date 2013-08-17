
% inputs: queryimage -- the filename of an input query image. databaseDirectory -- the pathname to the image database, queryDirectory -- the pathname to the queries
% outputs: closestmatches -- a cell array with the filenames of the 10 most similar images to the query

% example usage -- [closestMatches] = imageRetrieval_text('img_bags_clutch_1.jpg','/Users/tlberg/Desktop/teaching/Fall_12/hw/hw1/images/','/Users/tlberg/Desktop/teaching/Fall_12/hw/hw1/queryimages/');

function [closestMatches] = imageRetrieval_text(queryimage, databaseDirectory, queryDirectory)
%clear;
%clc;
% compute your lexicon here
% here, the lexicon's elements are in descending order associated with the appearing frequency 
% stop_linux_words.mat contains the stop words that need to be removed from
% the lexicon and the linux words dictionary as word referrence, if the word doesn't in the dictionary,
% leave it out from the lexicon, in case every word in the lexicon is
% meaningful.

load stop_linux_words.mat;
load lexicon.mat
lexicon = computeLexicon(databaseDirectory, stopWord, linuxWord);
save lexicon.mat;
% compute word vector descriptors for all database image descriptions here
% files(i).wordVector is wordVector for every single files(i);
DBfiles = computeDB_WV(databaseDirectory, lexicon);

% compute word vector descriptor for the query image description here
QueryFiles = computeQuery_WV(queryDirectory, lexicon);

% compute SSD between the query descriptor and each database image descriptor here
SSD = SSD_text(DBfiles, QueryFiles, queryimage);
 
% return the 10 closest images to the query here

closestMatches = top_similarPics(SSD, DBfiles);

% visulize the result 
vs_result(queryimage, closestMatches, databaseDirectory, queryDirectory);
get_descFile(queryimage, closestMatches, databaseDirectory, queryDirectory);
end
