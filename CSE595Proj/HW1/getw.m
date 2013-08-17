% return one word
function [word] = getw(file_id)
word = char.empty;
isPre_invalid = int8.empty;
while ~feof(file_id)
    [character, curr_pos] = getc(file_id);
    if ~isempty(curr_pos)
        if checkCharacter(character) == 1
            character = lower(character);
            [word] = addTo_word(word,character);
            isPre_invalid = 0;
        end
        
        if checkCharacter(character) == -1
            if isPre_invalid == 1
                continue;
            end
            if isPre_invalid == 0
               %tmp_lexicon(tmp_idx) = {word};
               disp(word);
               break;
               
               %word = char.empty;
               %tmp_idx = tmp_idx + 1;
            end
            isPre_invalid = 1;
        end
    end
end
end

