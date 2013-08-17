% generate testing_instance_matrix for SVM use.
function [testing_instance_matrix] = generate_testing_instance_matrix(testingData)
len = length(testingData);
testing_instance_matrix = zeros(len, 10*3);
for i = 1:len
    testingData(i).img_descr = reshape(testingData(i).img_descr,[1,30]);
    testing_instance_matrix(i,:) = testingData(i).img_descr;
end
testing_instance_matrix = double(testing_instance_matrix);
testing_instance_matrix = sparse(testing_instance_matrix);

end

