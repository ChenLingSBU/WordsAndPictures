% This function is used to compute the text descriptors' SSD

function [SSD] = SSD_text(DBfiles, QueryFiles, queryimage)
SSD = zeros(1, length(DBfiles));
descr_file = find_descFile(queryimage);
idx = int64.empty;
for i =1 :length(QueryFiles)
    if strcmp(descr_file, QueryFiles(i).name)
        idx = i;
        break;
    end
end
for i = 1:length(DBfiles)
    SSD(i) = sum(sum(imabsdiff(QueryFiles(idx).wordVector, DBfiles(i).wordVector).^2));
end
end

