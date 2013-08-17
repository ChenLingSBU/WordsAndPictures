% generate html file that contains the top 200 similar pictures.
function visual_result(databaseDirectory, testingData, top_similar)
len = length(top_similar);
fid = fopen('top_similar.html','w');
fprintf(fid, '<html><body>\n');
%fprintf(fid, 'query image:\n');
%fprintf(fid, '<br>');
%fprintf(fid,['<img src =''' pic_queryimage '''width=''' num2str(140) ''' height= ''' num2str(140) '''>\n']);
%fprintf(fid, '<br>');
%fprintf(fid, 'closest matches images:\n');
%fprintf(fid, '<br>');
for i = 1:len
    picname = strcat(databaseDirectory, testingData(top_similar(i)).name);
    %picname = picname{1};
    
    fprintf(fid,[' ''' num2str(i) '''.<img src =''' picname ''' width=''' num2str(140) ''' height= ''' num2str(140) '''>\n']);
    if mod(i, 5) == 0
        fprintf(fid, '<br>');
    end
end
fprintf(fid,'</body></html>');
fclose(fid);
end

