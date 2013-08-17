% Bayes classifier using laplace smooth
function [testing_imgs] = bayes_classifier(testing_imgs, categories)
prob = ones(1, length(categories));
for i = 1:length(testing_imgs)
    testing_imgs(i).prob = prob;
    fprintf('classifying %s\n', testing_imgs(i).name);
    for j = 1:length(categories(1).hist)
        for k = length(categories)
            testing_imgs(i).prob(k) = testing_imgs(i).prob(k)*((1+categories(k).hist(j))/(length(categories(1).hist) + sum(categories(k).hist)))^(testing_imgs(i).hist(j));
        end
    end
end
end


