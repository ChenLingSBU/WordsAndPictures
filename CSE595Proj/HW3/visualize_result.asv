% visualize confusion matrix
% tell how accuracy the classifier is
function visualize_result(testing_imgs, categories)
predict_category_counter = zeros(1, length(categories));
for i = 1:length(categories)
    categories(i).predict_category_counter = predict_category_counter;
end


for i = 1:length(categories)
    for j = length(testing_imgs)
        fprintf('computing confusion matrix, %s , %s\n', categories(i).name, testing_imgs(j).name);
        if strcmp(testing_imgs(j).category, categories(i).name)
            for k = 1:length(categories)
                    if strcmp(testing_imgs(j).predict_category, categories(k).name)
                        categories(i).predict_category_counter(k) = categories(i).predict_category_counter(k) + 1;
                    end
            end
        end
    end
end

fprintf('The total number of test images is %d \n', length(testing_imgs));

sum_of_wrong = 0;
sum_all = 0;

for  i = 1:length(categories)
    sum_of_wrong = sum(categories(i).predict_category_counter) - categories(i).predict_category_counter(i);
    sum_all = sum(categories(i).predict_category_counter);
end

fprintf('The total number of images that are miscategorized is %d \n', sum_of_wrong);

fprintf('The total accuracy across all the categories is %f%% \n', 100*(sum_all - sum_of_wrong)/sum_all);

for i = 1:length(categories)
    fprintf('The total number of test images in %s is %d,\n', categories(i).name, sum(categories(i).predict_category_counter)); 
    fprintf('the total number of images in %s that are mis-categorized is %d,\n', categories(i).name, sum(categories(i).predict_category_counter) - categories(i).predict_category_counter(i));
    fprintf('and the accuracy rate of %s is %f%%, \n\n\n',categories(i).name, 100*categories(i).predict_category_counter(i)/sum(categories(i).predict_category_counter));
end

confusion_matrix = zeros(length(categories),length(categories));

for i = length(categories)
    confusion_matrix(i,:) = categories(i).predict_category_counter/sum(categories(i).predict_category_counter);
end

imagesc(confusion_matrix);
title('Confusion Matrix of Categories');
end

