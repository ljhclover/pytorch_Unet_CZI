%���ֻ����
clc;
clear all;
close all;

jpgs = dir('E:\00Coastal_Zone_Research_Institute\CODE\pytorch-unet-nested-multiple-classification\jpg2png\ori\*.jpg');
num_jpgs = length( jpgs );
 for i = 1 : num_jpgs   
jpg_file = fullfile( 'E:\00Coastal_Zone_Research_Institute\CODE\pytorch-unet-nested-multiple-classification\jpg2png\ori\',jpgs(i).name );
jpg   = imread( jpg_file );
% ��һ���������ļ��� pgm_file ,ע�⣬pgm_file ����·��+�ļ���+��׺��
%[ path , name , ext ] = fileparts( bmp_file ) ;
  % �ڶ����������µ��ļ���
  filename = num2str(i,'%01i.png');
  filename = num2str(jpgs(i).name);
  
  % �������������ļ�ȫ��
   png_file = fullfile( 'E:\00Coastal_Zone_Research_Institute\CODE\pytorch-unet-nested-multiple-classification\jpg2png\res\' , filename ) ;
  % ���Ĳ����� pgm �� jpg_file ��Ϊ�ļ���������Ϊ jpg ��ʽ.
  imwrite( jpg , png_file , 'png' );
 end