I = imread('slika2.PNG');
size(I)
class(I)
subplot(2,2,1), imshow(I), title('Color image (RGB)')
subplot(2,2,2), imshow(I(:,:,1)), title('Red component')
subplot(2,2,3), imshow(I(:,:,2)), title('Green component')
subplot(2,2,4), imshow(I(:,:,3)), title('Blue component')
