% this function is used to visualize the result for part 1, 2, and 3.
% here 
function vs_result(queryimage, closestMatches, databaseDirectory, queryDirectory)
pic_queryimage = strcat(queryDirectory, queryimage);
fid = fopen('vs_result.html','w');
fprintf(fid, '<html><body>\n');
fprintf(fid, 'query image:\n');
fprintf(fid, '<br>');
fprintf(fid,['<img src =''' pic_queryimage '''width=''' num2str(140) ''' height= ''' num2str(140) '''>\n']);
fprintf(fid, '<br>');
fprintf(fid, 'closest matches images:\n');
fprintf(fid, '<br>');

for i = 1:length(closestMatches)
    picname = strcat(databaseDirectory, closestMatches(i));
    picname = picname{1};
    fprintf(fid,['<img src =''' picname ''' width=''' num2str(140) ''' height= ''' num2str(140) '''>\n']);
    if mod(i, 5) == 0
        fprintf(fid, '<br>');
    end
end
fprintf(fid,'</body></html>');
fclose(fid);

end

