% compute the precision for each k
function [k_precision] = generate_pairKP(filename)
label_vector = read_label_vector(filename);
k_precision = zeros(1,length(label_vector));
len = length(label_vector);
% counts the number of the right label
count_right = 0;
for i = 1:len
    if label_vector(i) == 1
        count_right = count_right + 1;
    end
    k_precision(i) = 100*count_right/i;
end
end

