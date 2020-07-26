%% rangf.m, ��������, �3470, MatLab
% ������� ����������� ���� �������� ��� ���������� �����������
% �������� � �����������: ordfilt2 �. 550

clc, clear % �������
RGB = imread ('pears.png'); % ����������� ����
I = rgb2gray(RGB); % ������� � �����-����� �����������
figure('Position', [10 50 1450 900]); % �������� ����� ����������� �������� �� ���� �����
subplot(2, 3, 1); 
imshow(RGB); title('RGB', 'FontName', 'Times New Roman', 'FontSize', 14);
subplot(2, 3, 2);
imshow(I); title('I', 'FontName', 'Times New Roman', 'FontSize', 14);

%% ��������� ����
I1 = imnoise (I, 'salt & pepper', 0.05); % ���������� ���
subplot(2, 3, 3);
imshow(I1); 
title('I1+imp noise', 'FontName', 'Times New Roman', 'FontSize', 14);

%% 3 �������� �������� ����������
I2 = ordfilt2(I1, 4, ones(5, 5)); % ��������� �����������
subplot(2, 3, 4);
imshow(I2); title('I2= ordfilt2(I1, 4, ones(5, 5))', 'FontName', 'Times New Roman', 'FontSize', 14);

I3 = ordfilt2(I1, 21, ones(5, 5));
subplot(2, 3, 5);
imshow(I3); title('I3 = ordfilt2(I1, 21, ones(5, 5))', 'FontName', 'Times New Roman', 'FontSize', 14);

I4 = ordfilt2(I1, 13, ones(5, 5));
subplot(2, 3, 6);
imshow(I4); title('I4 = ordfilt2(I1, 13, ones(5, 5))', 'FontName', 'Times New Roman', 'FontSize', 14);