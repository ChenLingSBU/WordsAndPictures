clear;
clc;
% set up the enviroment
run('vlfeat-0.9.16/toolbox/vl_setup');
vl_version verbose;
databaseDirectory = 'bags';
load stop_linux_words.mat

% Part1 Image Representation
images = list_all_images(databaseDirectory);
images = read_images(images);
[training_imgs, testing_imgs] = generate_training_testing_imgs(images);
[training_imgs, testing_imgs] = extract_SIFT_all_images(training_imgs, testing_imgs);
[C,A] = using_kmeans(training_imgs);
training_imgs = generate_visual_histogram(training_imgs,C);
testing_imgs = generate_visual_histogram(testing_imgs, C);

% Part2 Text Representation
training_imgs = generate_word_vector(databaseDirectory,training_imgs,lexicon);
testing_imgs = generate_word_vector(databaseDirectory,testing_imgs,lexicon);
training_imgs = combine_word_visual(training_imgs);
testing_imgs = combine_word_visual(testing_imgs);
categories = compute_times(databaseDirectory, training_imgs);

% Part3 Training Classifiers
testing_imgs = bayes_classifier(testing_imgs, categories);
testing_imgs = predict_category(testing_imgs, categories);

%Part4 visualize the result.
visualize_result(testing_imgs, categories);


