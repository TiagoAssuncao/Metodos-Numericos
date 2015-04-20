function x=GaussJacobi(v,b)

[l,c]=size(v);
n=l;

%Verificando se o sistema é possível
if det(v)==0
    fprintf('O sistema é impossível ou é possivel e indeterminado!\n')
else 
    
%Teste da convergência
ops=0;
for i=1:n
    s(i)=0;
end
for i=1:n
    for j=1:n
        if i~=j
            s(i)=s(i)+abs(v(i,j));
        else
            oi(i)=abs(v(i,j));
        end
    end
    if oi~=0
        s(i)=s(i)/oi(i);
    else 
        ops=1;
    end
end
opa=0;
for i=1:n
    if s(i)>=1||ops==1;
        opa=1;
    end
end
ver=1;
if opa==1 
    fprintf('\nNão há garantia de que o método irá funcionar pelo teste de convergência! Deseja continuar?\n');
    display('1 - Sim');
    display('2 - Não');
    ver=input('');
end
    if ver==1

        %Aplicando o método
        for i=1:n
            x(i)=0;
            y(i)=0;
        end
        for i=1:n
            for j=1:n
                if j~=i
                    x(i)=x(i)-v(i,j)*y(j);
                else
                    oi(i)=v(i,j);
                end
            end
            x(i)=(x(i)+b(i))/(oi(i));
        end

        C=1;
        limite=1;
        while C<=n
            while x(C) ~= y(C)
                for i=1:n
                    y(i)=x(i);
                end
                for i=1:n
                    for j=1:n
                        if j==1;
                            x(i)=0;
                        end
                        if j~=i
                            x(i)=x(i)-v(i,j)*y(j);
                        else
                            oi(i)=v(i,j);
                        end
                    end
                if oi(i) ~= 0
                    x(i)=(x(i)+b(i))/(oi(i));
                else
                    x(i)=0;
                end
                end
                C=1;
                limite=limite+1;
                if limite>1000
                    break;
                end
            end
            C=C+1;
            if limite>1000
                break;
            end
        end
        fprintf('\n');

        %Resultado
        A=0;
        for i=1:n
            if x(i)==inf||x(i)==-inf||x(i)>1e+100
                A=1;     
            end
        end


        if A==0
            for i=1:n
                display(['O valor de x(' num2str(i) ') é: ' num2str(x(i))]);
            end
        else
            display('Não foi possível encontrar as soluções (os valores divergiram)');
        end
        fprintf('\n');
    end
end
end