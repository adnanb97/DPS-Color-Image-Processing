I = imread('peppers-fullcolor.jpg');
Igray = rgb2gray(I);
figure, subplot(1,2,1), imshow(Igray), title('Grayscale');
subplot(1,2,2), imshow(Ihsv(:,:,3)), title('Value component');