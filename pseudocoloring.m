clc;
I = imread('mri-pseudocoloring.jpg');
subplot(1,2,1); 
imshow(I);
title('Original Image');
I2 = grayslice(I,16);
subplot(1,2,2);
imshow(I2, colormap(jet(16)));
title('Pseudo-colored with "jet" colormap');