clf;
clear all;
I = imread('peppers-fullcolor.jpg');
fn = fspecial('average');
Ihsv = rgb2hsv(I);
Ihsv2h = imfilter(Ihsv(:,:,1), fn);
Ihsv2s = imfilter(Ihsv(:,:,2), fn);
Ihsv2v = imfilter(Ihsv(:,:,3), fn);
Ihsv2(:,:,1) = Ihsv2h;
Ihsv2(:,:,2) = Ihsv2s;
Ihsv2(:,:,3) = Ihsv2v;
figure, subplot(2,3,1), imshow(Ihsv(:,:,1)), ...
title('Original Hue');
subplot(2,3,2), imshow(Ihsv(:,:,2)), ...
title('Original Saturation');
subplot(2,3,3), imshow(Ihsv(:,:,3)), ...
title('Original Value');
subplot(2,3,4), imshow(Ihsv2(:,:,1)), ...
title('Filtered Hue');
subplot(2,3,5), imshow(Ihsv2(:,:,2)), ...
title('Filtered Saturation');
subplot(2,3,6), imshow(Ihsv2(:,:,3)), ...
title('Filtered Value');
figure, subplot(1,2,1), imshow(I), title('Original Image');
subplot(1,2,2), imshow(hsv2rgb(Ihsv2)), ...
title('HSV with all components filtered');