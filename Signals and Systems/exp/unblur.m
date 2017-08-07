%Orignal Image
I = im2double(rgb2gray(imread('test.jpg')));
figure,subplot(3, 2, 1),imshow(I);
imwrite(I, 'origin.bmp');
title('1.原图');

temp = fft2(I);
temp = fftshift(temp);
temp = log(1 + abs(temp));
subplot(3,2,2),imshow(temp, []);
imwrite(temp, 'origin_fft.bmp');
title('2.原图的傅里叶频谱图');

%Blurred Image
PSF = fspecial('motion', 20, 45);
blurred_I = imfilter(I, PSF, 'conv', 'circular');
subplot(3, 2, 3), imshow(blurred_I);
imwrite(blurred_I, 'blurred_I.bmp');
title('3.运动模糊处理后的图(尺度为20,角度为45)')

temp = fft2(blurred_I);
temp = fftshift(temp);
temp = log(1 + abs(temp));
subplot(3,2,4),imshow(temp, []);
imwrite(temp, 'blurred_fft.bmp');
title('4.模糊图的傅里叶频谱图');

%Blurred Noisy Image
noise_mean = 0;
noise_var = 0.0001;
blurred_noisy_I = imnoise(blurred_I, 'gaussian', noise_mean, noise_var);
subplot(3, 2, 5),imshow(blurred_noisy_I);
imwrite(blurred_noisy_I, 'noisy.bmp');
title('5.在前模糊图基础上加均值为1，方差为0.0001之后的带噪点的模糊图');

temp = fft2(blurred_noisy_I);
temp = fftshift(temp);
temp = log(1 + abs(temp));
subplot(3,2,6),imshow(temp, []);
imwrite(temp, 'noisy_fft.bmp');
title('6.带噪点模糊图的傅里叶频谱图');

figure();

%Direct on Blurred Image
wnr1 = deconvwnr(blurred_I, PSF, 0);
subplot(2,2,1),imshow(wnr1);
imwrite(wnr1, 'direct1.bmp');

%Weiner on Blurred Image
wnr2 = deconvwnr(blurred_I, PSF, 0);
subplot(2, 2, 2), imshow(wnr2);
imwrite(wnr2, 'weiner1.bmp');

%Direct on Blurred and Noisy Image
wnr3 = deconvwnr(blurred_noisy_I, PSF, 0);
subplot(2, 2, 3), imshow(wnr3);
imwrite(wnr3, 'direct2.bmp');

%Weiner on Blurred and Noisy Image
signal_var = var(I(:));
wnr4 = deconvwnr(blurred_noisy_I, PSF, noise_var/signal_var);
imwrite(wnr4, 'weiner2.bmp');
subplot(2, 2, 4), imshow(wnr4);
subplot(2, 2, 3), imshow(wnr3);
