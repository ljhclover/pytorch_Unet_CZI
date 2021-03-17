function [ VecFolders ] = FindFolders( InputDir,IsReturnNameOnly )
%���ҵ�ǰ·���������ļ���
%���ҵ�ǰ·���������ļ���
%InputDir: ����·��
%IsReturnNameOnly���Ƿ�ֻ�����ļ�������1:ȫ·������0��ֻ�����ļ�����
%VecFolders������ļ����б�

%check��ǰ·���Ƿ�Ϸ�
if ~isdir(InputDir)
    msgbox('The input isnot a valid directory','Warning','warn');
    return 
else
    if nargin == 1
        IsReturnNameOnly = 1;
    elseif nargin>2||nargin<1
        msgbox('1 or 2 inputs are required','Warning','warn');
        return
    end
    if nargout>1
        msgbox('Too many output arguments','Warning','warn');
        return
    end
end
    %��ʼ���ļ����б�
    folders = {};
    %���ҵ�ǰ·���������ļ�
    files = dir(InputDir);
    m = length(files);
    %check�Ƿ�Ϊ�ļ��У����������vector
    num = 0;
    for i =1:1:m
        %�ų�.��..
        if ~(strcmp(files(i).name,'.')||strcmp(files(i).name,'..'))
            tmp = files(i).name;  
            if files(i).isdir     %�ж��Ƿ�Ϊ�ļ���    
                num = num + 1;
                if IsReturnNameOnly    %�����ļ����б�
                    folders{num} = tmp;
                else                   %�����ļ���ȫ·���б�
                    tmp = fullfile(InputDir,tmp);
                    folders{num} = tmp;
                end
            end
        end
    end
    %��ֵ�����ر���VecFolders
    if nargout==1
        VecFolders = folders';
    end
end