I = imread('peppers-fullcolor.jpg');
figure, subplot(2,4,1), imshow(I), title('Original Image');
subplot(2,4,2), imshow(I(:,:,1)), title('R component');
subplot(2,4,3), imshow(I(:,:,2)), title('G component');
subplot(2,4,4), imshow(I(:,:,3)), title('B component');
Ihsv = rgb2hsv(I);
subplot(2,4,6), imshow(Ihsv(:,:,1)), title('Hue')
subplot(2,4,7), imshow(Ihsv(:,:,2)), title('Saturation');
subplot(2,4,8), imshow(Ihsv(:,:,3)), title('Value');