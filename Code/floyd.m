% floyd 算法通用程序，输入 a 为赋权邻接矩阵
% 输出为距离矩阵 D, 和最短路径矩阵 path
function [D,path]=floyd(a)
n=size(a,1);
D=a;
path=zeros(n,n);
for i=1:n
    for j=1:n
        if D(i,j)~=inf
            path(i,j)=j;
        end
    end
end
for k=1:n
    for i=1:n
        for j=1:n
            if D(i,k)+D(k,j)<D(i,j)
                D(i,j)=D(i,k)+D(k,j);
                path(i,j)=path(i,k);
            end
        end
    end
end
% 配合 floyd 算法的后续程序, s 为源点, t 为宿点
% L 为长度, R 为路由
function [L,R]=router(D,path,s,t)
L=zeros(0,0);
R=s;
while 1
    if s==t
        L=fliplr(L);
        L=[0,L];
        L=L(end);
        return
    end
    L=[L,D(s,t)];
    R=[R,path(s,t)];
    s=path(s,t);
    if s==0
        return
    end
end