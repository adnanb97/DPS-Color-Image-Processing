clear all;
I = imread('peppers-fullcolor.jpg');
Ihsv = rgb2hsv(I);
fn2 = fspecial('laplacian',0);
Ihsv4v = imfilter(Ihsv(:,:,3), fn2);
Ihsv4(:,:,[1 2]) = Ihsv(:,:,[1 2]);
Ihsv4(:,:,3) = imsubtract(Ihsv(:,:,3),Ihsv4v);
figure, subplot(1,2,1), imshow(I), title('Original Image');
subplot(1,2,2), imshow(hsv2rgb(Ihsv4)), title('HSV sharpened');