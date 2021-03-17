%名字会混乱
clc;
clear all;
close all;

jpgs = dir('E:\00Coastal_Zone_Research_Institute\CODE\pytorch-unet-nested-multiple-classification\jpg2png\ori\*.jpg');
num_jpgs = length( jpgs );
 for i = 1 : num_jpgs   
jpg_file = fullfile( 'E:\00Coastal_Zone_Research_Institute\CODE\pytorch-unet-nested-multiple-classification\jpg2png\ori\',jpgs(i).name );
jpg   = imread( jpg_file );
% 第一步，解析文件名 pgm_file ,注意，pgm_file 包括路径+文件名+后缀，
%[ path , name , ext ] = fileparts( bmp_file ) ;
  % 第二步，生成新的文件名
  filename = num2str(i,'%01i.png');
  filename = num2str(jpgs(i).name);
  
  % 第三步，生成文件全称
   png_file = fullfile( 'E:\00Coastal_Zone_Research_Institute\CODE\pytorch-unet-nested-multiple-classification\jpg2png\res\' , filename ) ;
  % 第四步，将 pgm 以 jpg_file 作为文件名，保存为 jpg 格式.
  imwrite( jpg , png_file , 'png' );
 end