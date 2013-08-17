% get a single character from a txt file. 
% file_id is generated by fopen.

function [character, curr_pos] = getc(file_id)
character = fscanf(file_id,'%c',1);
curr_pos = character;
end