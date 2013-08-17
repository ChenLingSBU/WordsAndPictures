% genearte SIFT feature for training and testing imgs
function [training_imgs, testing_imgs] = extract_SIFT_all_images(training_imgs, testing_imgs)
training_imgs = extract_SIFT(training_imgs);
testing_imgs = extract_SIFT(testing_imgs);
end

