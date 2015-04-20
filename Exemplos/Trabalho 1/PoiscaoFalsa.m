%Zeros de Fun��es - M�todo da Posi��o Falsa

function x=PosicaoFalsa()

%Input
funcao=input('Digite a fun��o que deseja encontrar uma raiz: ');
a=input('Insira o primeiro Valor: ');
b=input('Insira o segundo Valor: ');
erro_final=input('Informe a precis�o desejada: ');

%Trocar de vari�vel
if(a>b)
    aux=b;
    b=a;
    a=aux;
end

%Corre��o
if(a==b)
    display('Os valores devem ser diferentes');
    a=input('Insira o primeiro Valor: ');
    b=input('Insira o segundo Valor: ');
end

if(a<b)
    x=a;
    f_a=eval(funcao);
    x=b;
    f_b=eval(funcao);

    %M�todo da posi��o falsa
    if(f_a*f_b<0)
        c=(a*f_b-b*f_a)/(f_b-f_a);
        
        %Erro
        x=c;
        f_c=eval(funcao);
        erro=abs(f_c);
        
        %Gr�fico
        i=1;
        Y=[c];
        X=[1];

        while(erro>erro_final)
            if(f_a*f_c<0)
                b=c;
                x=b;
                f_b=eval(funcao);
            else
                a=c;
                x=a;
                f_a=eval(funcao);
            end
            c=(a*f_b-b*f_a)/(f_b-f_a);
        
            %Erro
            x=c;
            f_c=eval(funcao);
            erro=abs(f_c);
            
            %Gr�fico
            i=i+1;
            Y(end+1)=c;
            X(end+1)=i;
        end
    display('  --');
    display(['raiz:',num2str(c),'',char(177),'',num2str(erro)]);
    
    %T�rmino do gr�fico
    plot(X,Y,'k-o','LineWidth',2,'MarkerEdgeColor','k','MarkerFaceColor','g','MarkerSize',10);
    title('Gr�fico da aproxima��o a cada itera��o');
    grid on;
    
    else
        display('Este n�o � um intervalo de valores v�lidos pois f(a)*f(b) deve ser negativo');
    end
end