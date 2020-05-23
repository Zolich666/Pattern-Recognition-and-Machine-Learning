function [solution iter] = Widrow_Hoff(Y,stepsize)
%
%    solution = Widrow_Hoff(Y.tau)最小均方差实现算法
%
%   输入：规范化样本矩阵Y,裕量tau,初始步长stepsize
%   输出：解向量solution，迭代次数iter
%
[y_k d] = size(Y);
a = zeros(1,d);
k_max = 10000;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

b=ones(1,y_k);
k_it=0;
while k_it<k_max
    flag=0;
    for j=1:1:y_k
        if a*Y(j,:)'~=b(j)
          a=a+stepsize*(b(j)-a*Y(j,:)')*Y(j,:);
          k_it=k_it+1;
          flag=flag+1;
        end
    end
    if flag==0
        break;
    end
end
k_max=k_it;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
k = k_max;
solution = a;
iter = k-1;