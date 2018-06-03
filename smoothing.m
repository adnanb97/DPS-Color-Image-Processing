clear all;
I = imread('peppers-fullcolor.jpg');
fn = fspecial('average');
I2r = imfilter(I(:,:,1), fn);
I2g = imfilter(I(:,:,2), fn);
I2b = imfilter(I(:,:,3), fn);
I2(:,:,1) = I2r;
I2(:,:,2) = I2g;
I2(:,:,3) = I2b;
figure, subplot(1,2,1), imshow(I), title('Original Image');
subplot(1,2,2), imshow(I2), title('Averaged Image');