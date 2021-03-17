function [ VecFolders ] = FindFolders( InputDir,IsReturnNameOnly )
%查找当前路径下所有文件夹
%查找当前路径下所有文件夹
%InputDir: 输入路径
%IsReturnNameOnly：是否只返回文件夹名，1:全路径名，0：只返回文件夹名
%VecFolders：输出文件夹列表

%check当前路径是否合法
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
    %初始化文件夹列表
    folders = {};
    %查找当前路径下所有文件
    files = dir(InputDir);
    m = length(files);
    %check是否为文件夹，如是则存入vector
    num = 0;
    for i =1:1:m
        %排除.和..
        if ~(strcmp(files(i).name,'.')||strcmp(files(i).name,'..'))
            tmp = files(i).name;  
            if files(i).isdir     %判断是否为文件夹    
                num = num + 1;
                if IsReturnNameOnly    %返回文件夹列表
                    folders{num} = tmp;
                else                   %返回文件夹全路径列表
                    tmp = fullfile(InputDir,tmp);
                    folders{num} = tmp;
                end
            end
        end
    end
    %赋值到返回变量VecFolders
    if nargout==1
        VecFolders = folders';
    end
end