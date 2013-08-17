% compute the closest visual word between training and testing
% compute the histogram for each pic

function [images] = generate_visual_histogram(images, C)
fprintf('generating visual histogram:\n');
hist = zeros(1,500);
for i = 1:length(images)
    fprintf('gerating visual histogram from: %s', images(i).name);
    images(i).hist = hist;
    imgaes(i).SSD = score(single(images(i).d, single(C)));
    [row, col] = size(images(i).SSD);
    images(i).row = row;
    for j = 1:images(i).row
        [m,I] = min(images(i).SSD(j,:));
        images(i).hist(I) = images(i).hist(I) + 1;
    end
    images(i).hist = images(i).hist./sum(images(i).hist);
end
end

