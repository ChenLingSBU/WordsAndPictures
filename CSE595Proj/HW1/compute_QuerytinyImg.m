% compute tiny-image descriptor for the query image here
function [QR_gray_img] = compute_QuerytinyImg(queryDirectory, queryimage)
QR_img = imread(strcat(queryDirectory,queryimage));
QR_gray_img = im2double(QR_img);
if size(QR_gray_img, 3) > 1
    QR_gray_img = imresize(rgb2gray(QR_gray_img), [32 32] );
else
    QR_gray_img = imresize(QR_gray_img, [32 32]);
end
disp(strcat('compute tiny-image descriptors for',32, queryimage))
end
