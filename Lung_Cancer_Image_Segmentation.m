clc;
clear all;
close all;
normal_image = im2double(imread('D:\Mini Project\Medical Images\norlung.jpeg'));
subplot(3,4,1)
imshow(normal_image)
title('Normal lung cancer')
%Input Test image.
org_image = im2double(imread('dl.png'));
%Image information of an image.
imfinfo('dl.png')
subplot(3,4,2)
imshow(org_image)
title('Original Test image')
%Read pixel information of an image.
impixelinfo
Gray_image = rgb2gray(org_image);
subplot(3,4,3)
imshow(Gray_image)
title('Grayscale Image')
subplot(3,4,4)
imshow(Gray_image);
title('seed selection')
threshold=graythresh(Gray_image);
J = regiongrowing(Gray_image); 
subplot(3,4,5)
imshow((Gray_image+J));
title('Region-growing based Segmented output image')
%img_diff=abs(Gray_image-Gray_image+J)
se = strel('square',5);
erosion_image = imerode(org_image+J,se);
dilation_image = imdilate(erosion_image,se);
subplot(3,4,6)
imshow(dilation_image)
title('Eroded and dilated images')
mask = roipoly();
extract_image = dilation_image.*mask;
imshow(extract_image)
title('Extraction of tumor part of image image')
crp_image=imcrop(extract_image);
subplot(3,4,7)
imshow(crp_image)
imagesc(crp_image)
imtool(crp_image)
crop_image = rand(256, 256); % Example random double image of size 256x256
%Convert double image to integer image
crp_image = uint16(round(crop_image* 255)); % Scale to 0-255 and convert to uint8
disp(crp_image)
imtool(crp_image)
mean(crp_image)
X=size(crp_image);
avg=mean(crp_image(:));
minIntensity=min(crp_image(:));
maxIntensity=max(crp_image(:));
meanIntensity = mean(crp_image(:));
%sd = std(crp_image(:));
%v = var(crp_image(:));
% Calculate variance
varianceValue = var(double(crp_image(:)));
% Calculate standard deviation
stdDeviation = std(double(crp_image(:)));



subplot(3,4,8)
imshow(Gray_image)
title('Grayscale Image')
J = regiongrowing(Gray_image); 
subplot(3,4,9)
imshow(Gray_image+J);
title('Region-growing based Segmented output image')
se = strel('square',5);
erosion_image = imerode(org_image+J,se);
dilation_image = imdilate(erosion_image,se);
subplot(3,4,10)
imshow(dilation_image)
title('Eroded and dilated images')
mask = roipoly();
extract_image = dilation_image.*mask;
imshow(extract_image)
title('Extraction of tumor part of image')
crp_image2=imcrop(extract_image);
subplot(3,4,11)
imshow(crp_image2)
imagesc(crp_image2)
imtool(crp_image2)
crp_image2 = rand(256, 256); % Example random double image of size 256x256
% Convert double image to integer image
crp_image2 = uint16(round(crp_image2 * 255)); % Scale to 0-255 and convert to uint8
disp(crp_image2)
mean(crp_image2)
size2=size(crp_image2);
avg2=mean(crp_image2(:));
minIntensity2=min(crp_image2(:));
maxIntensity2=max(crp_image2(:));
meanIntensity2= mean(crp_image2(:));
%sd2 = std(crp_image2(:));
%v2 = var(crp_image2(:));
% Calculate variance
varianceValue2 = var(double(crp_image2(:)));
% Calculate standard deviation
stdDeviation2= std(double(crp_image2(:)));














