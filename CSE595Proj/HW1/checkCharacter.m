% check whether the character we get is valid
% return 1, if valid, otherwise -1.
function [result] = checkCharacter(character)
if isletter(character) || strcmp(character, '''')
    result = 1;
end

if ~isletter(character) && ~strcmp(character, '''')
    result = -1;
end
end

