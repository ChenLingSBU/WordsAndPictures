% get image's description.
function get_descFile(queryimage, closestMatches, databaseDirectory, queryDirectory)
des_queryimage = find_descFile(queryimage);
queryimage_name = strcat(queryDirectory, des_queryimage);
query_des = read_desFile(queryimage_name);
fid = fopen('desc.html','w');
fprintf(fid, '<html><body>\n');
fprintf(fid, 'query image:\n');
fprintf(fid, '<br>');
fprintf(fid, '<br>');
fprintf(fid,[query_des '\n']);
fprintf(fid, '<br>');
fprintf(fid, '<br>');
fprintf(fid, 'closest matches images:\n');
fprintf(fid, '<br>');
fprintf(fid, '<br>');
for i = 1:length(closestMatches)
    des_pic = closestMatches(i);
    des_pic = des_pic{1};
    fprintf(fid,[des_pic '\n'] );
    fprintf(fid,'<br>');
    fprintf(fid,'<br>');
    des_pic = find_descFile(des_pic);
    picname = strcat(databaseDirectory, des_pic);
    pic_des = read_desFile(picname);
    fprintf(fid,[pic_des '\n']);
    fprintf(fid, '<br>');
    fprintf(fid, '<br>');
end
fprintf(fid,'</body></html>');
fclose(fid);


end

