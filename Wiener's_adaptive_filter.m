% Wiener.m, ��������, �3470, MatLab
% ������� ����������� ����������� 
% ������� ���������� ���������� ������,
% �������� � �����������: imnoise - �. 548, wiener2 - �. 553
clc, clear % ������� command window � workspace
%RGB = imread ('saturn.png'); % 1500 x 1200 x 3 uint8
% RGB = imread ('football.jpg'); % 256 x 320 x 3
RGB = imread ('cameraman.tif'); 


%I = rgb2gray(RGB); % �������������� RGB � �����
figure('Position', [10 50 1450 900]); % �������� ����� ����������� �������� �� ���� �����
%subplot(2, 2, 1);  % ����� �� ����� � 1�� ����������� ������� RGB-�����������
%imshow(RGB); title('RGB', 'FontName', 'Times New Roman', 'FontSize', 14);
%subplot(2, 2, 2);
%imshow(I); title('I', 'FontName', 'Tahoma', 'FontSize', 14);

% ��������� �������� ����:
J = imnoise(RGB, 'gaussian', 0/256, (30/256)^2); % ���������� �������� ����
subplot(2, 2, 3);
imshow(J); title('J', 'FontName', 'Tahoma', 'FontSize', 14);

% ���������� ���� ������� ���������� ���������� ������
K = wiener2c (J, [4 4]);
subplot(2, 2, 4);
imshow(K); title('K', 'FontName', 'Tahoma', 'FontSize', 14);
