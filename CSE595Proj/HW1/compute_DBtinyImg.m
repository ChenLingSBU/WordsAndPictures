% compute tiny-images descriptors for all database images
function [DB_imgs] = compute_DBtinyImg(databaseDirectory)
DB_imgs = dir(fullfile(databaseDirectory,'*.jpg'));
lenOfDB_imgs = length(DB_imgs);
for i = 1:lenOfDB_imgs
    DB_imgs(i).gray_img = im2double(imread(fullfile(databaseDirectory,DB_imgs(i).name)));
    if size(DB_imgs(i).gray_img, 3) >1
        DB_imgs(i).gray_img = imresize(rgb2gray(DB_imgs(i).gray_img), [32 32] );
    else
        DB_imgs(i).gray_img = imresize(DB_imgs(i).gray_img, [32 32]);
    end
    disp(strcat('compute tiny-image descriptors for',32, DB_imgs(i).name));
end

end
