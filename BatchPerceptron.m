function [solution iter] = BatchPerceptron(Y,tau)
%
%   solution = BatchPerceptron(Y,tau) �̶������������֪���㷨ʵ��
%
%   ���룺�淶����������Y,ԣ��tau
%   �����������solution����������iter
%
[y_k d] = size(Y);
a = zeros(1,d);
k_max = 10000;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

it=0;
Y_kit=zeros(d,1);
while it<k_max
    flag=0;
    for i=1:1:y_k
        if a*Y(i,:)'<=tau
            Y_kit=Y_kit+Y(i,:)';
            flag=flag+1;
        end
    end
    if flag==0
        break;
    end
    a=a+Y_kit';
    it=it+1;
end
k_max=it;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
k = k_max;
solution = a;
iter = k-1;
