% compute SSD on img's descriptor
function [SSD] = SSD_img(DB_imgs, QR_img)
SSD = zeros(1,length(DB_imgs));
for i = 1:length(DB_imgs)
    SSD(i) = sum(sum(imabsdiff(QR_img, DB_imgs(i).gray_img).^2));
end
end