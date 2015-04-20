function x=LU(v,b)

[l,c]=size(v);
n=l;

%Clonagem
for i=1:n
    for j=1:n
        V(i,j)=v(i,j);
    end
end

%Construindo a matriz U
for j=1:(n-1)
    X=j;
    for i=(j+1):n
        if abs(V(i,j))>abs(V(X,j))
            X=i;
        end
    end
    if X~=j
        troca_linha(V,X,j);
    end
    for i=(j+1):n
        m=V(i,j)/V(j,j);
        for k=1:n
            V(i,k)=V(i,k)-m*V(j,k);
        end
    end
end

for i=1:n
    for j=1:n
        U(i,j)=V(i,j);
    end
end

%Construindo a matriz L
    %Multiplicadores
    for j=1:(n-1)
    X=j;
    for i=(j+1):n
        if abs(v(i,j))>abs(v(X,j))
            X=i;
        end
    end
    if X~=j
        troca_linha(v,X,j);
    end
    for i=(j+1):n
        m(i,j)=v(i,j)/v(j,j);
        for k=1:n
            v(i,k)=v(i,k)-m(i,j)*v(j,k);
        end
    end
    end
    
for i=1:n
    for j=1:n
        if i<j
            L(i,j)=0;
        elseif i==j
            L(i,j)=1;
        else
            L(i,j)=m(i,j);
        end
    end
end

%Eliminação(L,b)
y(1)=b(1);
for i=2:n
    s=0;
    for j=1:(i-1)
        s=s+L(i,j)*y(j);
    end
    y(i)=(b(i)-s)/L(i,i);
end
 
%Eliminação(U,y)
x(n)=y(n)/U(n,n);
for i=(n-1):-1:1
    s=0;
    for j=(i+1):n
        s=s+U(i,j)*x(j);
    end
    x(i)=(y(i)-s)/U(i,i);
end

%Display
for i=1:n
    display(['O valor de x(' num2str(i) ') é: ' num2str(x(i))]);
end
fprintf('\n');

%De novo?
O=1;
while O~=2
O=input('Você deseja trocar a matriz dos resultados?(1 - Sim, 2 - Não): ');
    if O==2
        break;
    end
while (O~=1&&O~=2)
    O=input('1 - Sim, 2 - Não: ');
    if O==1
        break;
    end
end
    for i=1:n
        b(i) = input(['Digite o valor de b(' num2str(i) '): ']);
    end
    
%Eliminação(L,b)
y(1)=b(1);
for i=2:n
    s=0;
    for j=1:(i-1)
        s=s+L(i,j)*y(j);
    end
    y(i)=(b(i)-s)/L(i,i);
end
 
%Eliminação(U,y)
x(n)=y(n)/U(n,n);
for i=(n-1):-1:1
    s=0;
    for j=(i+1):n
        s=s+U(i,j)*x(j);
    end
    x(i)=(y(i)-s)/U(i,i);
end
fprintf('\n');
%Display
for i=1:n
    display(['O valor de x(' num2str(i) ') é: ' num2str(x(i))]);
end
fprintf('\n');
end
end