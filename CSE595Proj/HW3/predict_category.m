% predict category for testing images
function [testing_imgs] = predict_category(testing_imgs, categories)
for i = 1:length(testing_imgs)
    fprintf('predicting category for testing image: %s \n', testing_imgs(i).name);
    [p, q] = max(testing_imgs(i).prob);
    for j = 1:length(categories)
        if q == j
            testing_imgs(i).predict_category = categories(j).name;
        end
    end
end
end

