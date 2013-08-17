% generate training and testing dataset. 
% according to the requirement
% numbered 500 and below is training images
% numbered over 500 is testing images
function [training_imgs, testing_imgs] = generate_training_testing_imgs(images)
idx_training = 1;
idx_testing = 1;
for i = 1:length(images)
    for j = 1:length(images(i).name)
        if j <= 500
            training_imgs(idx_training).name = images(i).name{j};
            training_imgs(idx_training).img = images(i).img{j};
            training_imgs(idx_training).path = images(i).path;
            training_imgs(idx_training).category = images(i).category;
            idx_training = idx_training + 1;
            fprintf('genearte training images: %s\n', images(i).name{j});
        else
            testing_imgs(idx_testing).name = images(i).name{j};
            testing_imgs(idx_testing).img = images(i).img{j};
            testing_imgs(idx_testing).path = images(i).path;
            testing_imgs(idx_testing).category = images(i).category;
            idx_testing = idx_testing + 1;
            fprintf('genearte testing images: %s \n', images(i).name{j});
        end
    end
end
end

