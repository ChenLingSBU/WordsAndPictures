clear;
clc;

addpath C:\Users\ChenLing\Downloads\libsvm-3.12\matlab;
databaseDirectory = 'bags/';
attribute = 'brown';
% Part 1, label images as trainingData or testingData
% use struct as label,
% like files(1).label = training, files(2).label = testing. 
files = label_images(databaseDirectory);

% Part 2, compute images' descriptors 
% use struct as img_descr
% files(1).img_descr
% img_descr is a 3D matrix, each dimension contains h, s, and v. 
files = compute_imageDescriptors(databaseDirectory, files);

% get trainingData and testingData from the labeled files.
[trainingData testingData] = get_trainingData(files);

% use trainingData to generate training_label_vector for SVM use. 
training_label_vector = generate_training_label_vector(databaseDirectory,trainingData,attribute);

% use trainingData to generate training_instance_matrix for SVM use.
training_instance_matrix = generate_training_instance_matrix(trainingData);

% use testingData to generate testing_instance_matrix for SVM use.
testing_instance_matrix = generate_testing_instance_matrix(testingData);

% get temporary trainingData and tuningData.
[tmp_training, tmp_tuning, tmp_training_vector, tmp_training_instance, tmp_tuning_vector, tmp_tuning_instance] = split_trainingData(trainingData, training_label_vector, training_instance_matrix);

% use cross validation to find out the optimized 'c' and 'g'
[bestacc, bestc,bestg,cmd] = find_bestSVMcg(tmp_training_vector, tmp_training_instance, tmp_tuning_vector, tmp_tuning_instance);

% use svm to train all the training images and predict all the testing
% imgaes
[predict_label, accuracy, prob_estimates] = SVM(training_label_vector, training_instance_matrix, testing_instance_matrix,cmd);

% get the top 200 similar pictures
top_similar = get_topSimilar(prob_estimates, predict_label);

% visulize the top 200 similar pictures
visual_result(databaseDirectory, testingData, top_similar);















