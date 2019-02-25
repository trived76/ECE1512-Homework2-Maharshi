% Reading an image
I=imread('moon.tif');

Kernel1=[-1,0,1;-2,0,2;-1,0,1];
output_img1 = conv2(I,Kernel1);

Kernel2=[-1,-2,-1;0,0,0;1,2,1];
output_img2 = conv2(I,Kernel2);

subplot(1,3,1);
imshow(I);
title('Input Image (grayscale)');

subplot(1,3,2);
imshow(output_img1);
title('Vertical Edge Detector');

subplot(1,3,3);
imshow(output_img2);
title('Horizontal Edge Detector');