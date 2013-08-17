% read files line by line
% filename includes the path of the file.

function [wordVector] = readLine(filename)
wordVector = cell.empty;
elemNum = size(wordVector,2);
fid = fopen(filename,'r');
tline = fgetl(fid);
while ischar(tline)
    disp(tline);
    wordVector(elemNum+1) = {tline};
    tline = fgetl(fid);
    elemNum = size(wordVector,2);
end

fclose(fid);

end

