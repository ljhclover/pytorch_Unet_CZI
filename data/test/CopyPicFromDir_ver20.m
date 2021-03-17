% 复制分散文件夹下图片到一个指定目录,此程序提取mask文件，而不是最后结果
%用于提取粉色视频，每隔5帧提取
%专门用于深度学习模型的结果
% by lijh 20201003
%%
clc;
clear all;
close all;
%% 需要搜索的目录
dir='output';

%% 计算其中多少个文件夹，并记录元胞中调用
path=strcat('.\',dir,'\');
VecFolders=FindFolders(path,1);
num_Folders = length( VecFolders );



for i=1:num_Folders 
    dirname=strcat(path,VecFolders{i,1},'\');
    filename=strcat(dirname,VecFolders{i,1},'_1.png');%拷贝出所有的文件
    
    %filename=strcat(dirname,'*.png');%拷贝出所有的文件
    copyfile(filename, '.\res\');      % 把22.txt复制到文件夹2中
%     frametemp=imread(filename); %读取图像，放在变量frame中
%     frame=imresize(frametemp,[1080 1920]); %归一化图片，尺寸全部改为2976 3968
%     writeVideo(WriterObj,frame); %将frame放到变量WriterObj中
end


