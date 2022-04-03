clc
clear
close all
n = 1;
teta = 180;
P = phantom(128); % inisiasi fantom dengan 128 pixel yang merepresentasikan pasien di lakukan ct scan
R = radon(P,1:n:teta); %transformasi ke sinogram menggunakan fungsi radon dengan sudut 0 sampai 179
I1 = iradon(R,1:n:teta); %proyeksi balik dari sinogram ke sebuah citra menggunakan filter
I2 = iradon(R,1:n:teta,'linear','none'); %proyeksi balik dari sinogram ke sebuah citra tanpa filter
figure; imshow(P), title('Original')
figure; imshow(I1,[]), title('Filtered backprojection')
figure; imshow(I2,[]), title('Unfiltered backprojection')