%% medf.m, ��������, �3470, MatLab
% ������� ����������� ���� ��������� ��������
% �������� � �����������, imnoise - �. 548, medfilt2 - �. 550

clc, clear 
%[x, map] = imread ('kids.tif'); % 378 x 400
[x, map] = imread ('m83.tif');
RGB = ind2rgb(x, map);

%RGB = imread('saturn.png'); % 1500 x 1200 x 3 uint8
%RGB = imread ('concordaerial.png');
%RGB = imread('eight.tif');
%RGB = imread ('liftingbody.png');
%I = rgb2gray(RGB); % �������������� RGB � �����
%Imin = min(I(:)); % Imin = 0
%Imax = max(I(:)); % Imax = 198
figure('Position', [10 50 1450 900]); % �������� ����� ����������� �������� �� ���� �����
subplot(1, 3, 1);  % ����� �� ����� � 1�� ����������� ������� RGB-�����������
imshow(RGB); 
title('RGB', 'FontName', 'Times New Roman', 'FontSize', 14);
%subplot(1, 3, 2);  % ����� �� ����� � 1�� ����������� ������� RGB-�����������
%imshow(I);
%title('I', 'FontName', 'Tahoma', 'FontSize', 14);

%% ��������� ����������� ����������� ����
I1 = imnoise(ind2gray(x, map), 'salt & pepper', 0.2); % ���������� ���, ��� "���� � �����"
subplot(1, 3, 2);
imshow(I1); 
title('I1', 'FontName', 'Tahoma', 'FontSize', 14);

%%  ���������� ����������� ���� ��������� ��������
I2 = medfilt2c (I1, [5 5]); % ����������� ���������
subplot(1, 3, 3);
imshow(I2); 
title('I2', 'FontName', 'Tahoma', 'FontSize', 14);



