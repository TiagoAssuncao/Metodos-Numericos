function x=Cramer(v,b)

[l,c]=size(v);
n=l;

%Clonagem de v
for i=1:n
    for j=1:n
        V(i,j)=v(i,j);
    end
end

%Valores dos determinantes
D=det(v);

if D==0
    fprintf('O sistema é impossível ou é possivel e indeterminado!\n')
else

    for i=1:n
        for j=1:n
            v(j,i)=b(j);
        end
        C(i)=det(v);
        for j=1:n
            v(j,i)=V(j,i);
        end
    end


    %Cramer
    for i=1:n
        x(i)=C(i)/D;
    end

    %Resultado
    for i=1:n
        display(['O valor de x(' num2str(i) ') é: ' num2str(x(i))]);
    end

end
end
