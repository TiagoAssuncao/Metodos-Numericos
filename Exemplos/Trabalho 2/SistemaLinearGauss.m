function x=SistemaLinearGauss(v,b)

[l,c]=size(v);
n=l;

%Verificando se o sistema é possível
if det(v)==0
    fprintf('O sistema é impossível ou é possivel e indeterminado!\n')
else

%Método de eliminação de Gauss.

        b=reshape(b,length(b),1); 
        index=linspace(1,n,n);
        
        %Pivoteamento
        for cont=1:(n-1)
            [Y,I]=max(v(cont,cont:n));
            I=I+(cont-1); 
            aux=v(:,cont);
            v(:,cont)=v(:,I);
            v(:,I)=aux;
            aux=index(cont);
            index(cont)=index(I);
            index(I)=aux;
            for cont2=cont+1:n
                k=-v(cont2,cont)/Y;
                v(cont2,cont:n)=v(cont2,cont:n)+k*v(cont,cont:n); 
                b(cont2)=b(cont2)+k*b(cont);
            end
        end
        
        %Final
        x(n)=b(n)/v(n,n);    

            while cont>=1
                aux=sum(v(cont,cont+1:n).*x(cont+1:n));
                x(cont)=(b(cont)-aux)/v(cont,cont);           
                cont=cont-1;
                if cont<1
                    break
                end
            end

        for cont=1:n
            for i=1:n
                if index(i)==index(cont)
                    aux=x(index(i));
                    x(index(i))=x(cont);
                    x(cont)=aux;
                    aux=index(index(i));
                    index(index(i))=index(cont);
                    index(cont)=aux;
                end
            end
        end

    for i=1:n
        display(['O valor de x(' num2str(i) ') é: ' num2str(x(i))]);
    end
    fprintf('\n');
end
end
