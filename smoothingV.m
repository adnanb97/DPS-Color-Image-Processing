clf;
clear all;
I = imread('peppers-fullcolor.jpg');
fn = fspecial('average');
Ihsv = rgb2hsv(I);
Ihsv2v = imfilter(Ihsv(:,:,3), fn);
Ihsv3(:,:,[1 2]) = Ihsv(:,:,[1 2]);
Ihsv3(:,:,3) = Ihsv2v;
subplot(1,2,1), imshow(I), title('Original Image');
subplot(1,2,2), imshow(hsv2rgb(Ihsv3)), title('HSV with only value component filtered')