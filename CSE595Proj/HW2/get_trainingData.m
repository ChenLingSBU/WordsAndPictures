% Pick up all training images as one group named trainingData
% Pick up all testing images as one group named testingData
function [trainingData testingData] = get_trainingData(files)
len = length(files);
tmp_data = files;
tmp_data1 = files;
count_training = 1;
count_testing = 1;
for i = 1:len
    if isInTrainingSet(files(i))
        tmp_data(count_training) = files(i);
        count_training = count_training + 1;
    else
        tmp_data1(count_testing) = files(i);
        count_testing = count_testing + 1;
    end
end
tmp_data = tmp_data(1:count_training);
tmp_data1 = tmp_data1(1:count_testing);
trainingData = tmp_data;
testingData = tmp_data1;
end

