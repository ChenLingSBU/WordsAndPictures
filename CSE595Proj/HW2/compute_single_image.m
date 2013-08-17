% compute image descriptor for one image
% this function will be called by compute_imageDescriptors()
% since the value of h, s, v is in[0,1]
% so we can set the 10 bins vector as [0.1, 0.2, 0.3, 0.4, 0.5, 0.6,0.7, 0.8, 0.9,1]

function [img_descr] = compute_single_image(databaseDirectory, file)
im = imread(strcat(databaseDirectory, file.name));
%im_hsv = rgb2hsv(im);
%im_hsv = double(im_hsv);
[h s v]= rgb2hsv(im);
bin_vector = [0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6,0.7, 0.8, 0.9];
img_descr(:,:,1) = generateHist(h, bin_vector);
img_descr(:,:,2) = generateHist(s, bin_vector);
img_descr(:,:,3) = generateHist(v, bin_vector);
%img_descr = GenerateHSVHist(im_hsv);
end



