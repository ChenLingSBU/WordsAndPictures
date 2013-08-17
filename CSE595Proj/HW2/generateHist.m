% generate histogram from images
function [histogram] = generateHist(data, bin_vector)
tmp_hist = histc(data, [bin_vector, inf]);
tmpp_hist = zeros(size(bin_vector));
for i = 1: (size(tmp_hist,1) - 1)
    tmpp_hist(i) = sum(tmp_hist(i,:));
end
histogram = tmpp_hist/sum(tmpp_hist);
end

