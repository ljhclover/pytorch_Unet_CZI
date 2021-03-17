clc;
clear all;
close all;
jpg_file = fullfile( 'E:\00Coastal_Zone_Research_Institute\CODE\pytorch-unet-nested-multiple-classification\jpg2png\ori\9.jpg');
jpg   = imread( jpg_file );
png_file = fullfile( 'E:\00Coastal_Zone_Research_Institute\CODE\pytorch-unet-nested-multiple-classification\jpg2png\res\9.png') ;
imwrite( jpg , png_file , 'png' );