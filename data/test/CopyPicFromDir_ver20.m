% ���Ʒ�ɢ�ļ�����ͼƬ��һ��ָ��Ŀ¼,�˳�����ȡmask�ļ��������������
%������ȡ��ɫ��Ƶ��ÿ��5֡��ȡ
%ר���������ѧϰģ�͵Ľ��
% by lijh 20201003
%%
clc;
clear all;
close all;
%% ��Ҫ������Ŀ¼
dir='output';

%% �������ж��ٸ��ļ��У�����¼Ԫ���е���
path=strcat('.\',dir,'\');
VecFolders=FindFolders(path,1);
num_Folders = length( VecFolders );



for i=1:num_Folders 
    dirname=strcat(path,VecFolders{i,1},'\');
    filename=strcat(dirname,VecFolders{i,1},'_1.png');%���������е��ļ�
    
    %filename=strcat(dirname,'*.png');%���������е��ļ�
    copyfile(filename, '.\res\');      % ��22.txt���Ƶ��ļ���2��
%     frametemp=imread(filename); %��ȡͼ�񣬷��ڱ���frame��
%     frame=imresize(frametemp,[1080 1920]); %��һ��ͼƬ���ߴ�ȫ����Ϊ2976 3968
%     writeVideo(WriterObj,frame); %��frame�ŵ�����WriterObj��
end


