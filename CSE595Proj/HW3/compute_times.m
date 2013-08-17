% Compute the times of each features occurs in the training sample of each
% category
function [categories] = compute_times(databaseDirectory, training_imgs)
DB_categories = get_directory(databaseDirectory);
for i = 1:length(DB_categories)
    categories(i).name = DB_categories{i};
    categories(i).hist = 0;
end
for i = 1 : length(training_imgs)
    for j = 1 : length(DB_categories)
        if strcmp(training_imgs(i).category, DB_categories{j})
            categories(j).hist = categories(j).hist + training_imgs(i).hist;
        end
    end
 end
end

