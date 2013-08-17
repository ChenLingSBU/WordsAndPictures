% using k-means to cluster training images
function [C,A] = using_kmeans(training_imgs)
[data] = generateData(training_imgs);
fprintf('computing kmeans..............\n');
[C,A] = vl_ikmeans(data,500);
end

