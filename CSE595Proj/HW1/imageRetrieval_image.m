
% inputs: queryimage -- the filename of an input query image. databaseDirectory -- the pathname to the image database, queryDirectory -- the pathname to the queries
% outputs: closestMatches -- a cell array with the filenames of the 10 most similar images to the query

% example usage -- [closestMatches] = imageRetrieval_image('img_bags_clutch_1.jpg','/Users/tlberg/Desktop/teaching/Fall_12/hw/hw1/images/','/Users/tlberg/Desktop/teaching/Fall_12/hw/hw1/queryimages/');

function [closestMatches] = imageRetrieval_image(queryimage, databaseDirectory, queryDirectory)

% compute tiny-image descriptors for all database images here
DB_imgs = compute_DBtinyImg(databaseDirectory);
% compute tiny-image descriptor for the query image here
QR_img = compute_QuerytinyImg(queryDirectory,queryimage);
% compute SSD between the query image descriptor and each image descriptor in the database here
SSD = SSD_img(DB_imgs, QR_img);
% return the 10 closest images to the query here
closestMatches = top_similarPics(SSD, DB_imgs);
% visualize the closestMatches pics and descriptors
vs_result(queryimage, closestMatches, databaseDirectory, queryDirectory);
get_descFile(queryimage, closestMatches, databaseDirectory, queryDirectory);

end




