I = imread('cvijet-segmentacija.jpg');
n = 6;
[I2,map2] = rgb2ind(I,n,'nodither');
imshow(I)
figure, imshow(I2,map2)
%figure, imshow(I2,hsv(3))