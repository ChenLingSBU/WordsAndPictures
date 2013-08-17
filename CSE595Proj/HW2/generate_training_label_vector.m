% generate training label vector
% Positive examples for training an attribute
% e.g. "black", will consist of those images in 
% *training set* that have the attribute in their text description.
% Negative examples will be the rest of the images in *training set*.
% positve is 1, negative is -1. 
% the training_label_vector is a M*1 vector. 
function [training_label_vector] = generate_training_label_vector(databaseDirectory,trainingData, attribute)
len = length(trainingData);
training_label_vector = zeros(size(trainingData,2), 1);
for i = 1:len
   lexicon = generate_lexicon(databaseDirectory, trainingData(i));
   if isAttrInDesc(attribute, lexicon)
       training_label_vector(i) = 1;
       training_label_vector(i) = double(training_label_vector(i));
   else
       training_label_vector(i) = -1;
       training_label_vector(i) = double(training_label_vector(i));
   end
end

end

