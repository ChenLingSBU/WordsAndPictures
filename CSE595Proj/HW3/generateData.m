% generate data for kmeans from the result of dsift
function [data] = generateData(training_imgs)
fprintf('generating training data for kmeans from the result of DSIFT features we got\n');
data = [training_imgs.d];
data = uint8(data); % reqired by kmeans tool for this project here. 
end

