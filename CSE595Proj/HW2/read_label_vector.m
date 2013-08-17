% read label vector from file
function [label_vector] = read_label_vector(filename)
label_vector = zeros(1,200);
fid = fopen(filename, 'r');
tline = fgetl(fid);
i = 1;
while ischar(tline)
    disp(tline);
    label_vector(i) = str2num(tline);
    i = i + 1;
    tline = fgetl(fid);
end
fclose(fid);

end

