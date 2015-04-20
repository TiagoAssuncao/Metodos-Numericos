%Zeros de Funções - Método da Bissecção

function x=MetodoBisseccao()

%Input
funcao=input('Digite a função que deseja encontrar uma raiz: ');
a=input('Insira o primeiro Valor: ');
b=input('Insira o segundo Valor: ');
erro_final=input('Informe a precisão desejada: ');

%Trocar de variável
if(a>b)
    aux=b;
    b=a;
    a=aux;
end

%Correção
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
    
    if(f_a*f_b<0)
        c=(a+b)/2;
        
        %Erro
        erro=(b-a)/2;
        
        %Gráfico
        i=1;
        Y=[c];
        X=[1];
        
            while(erro>erro_final)
                x=c;
                f_c=eval(funcao);
                if(f_a*f_c<0)
                    b=c;
                    x=b;
                    f_b=eval(funcao);
                else 
                    a=c;
                    x=a;
                    f_a=eval(funcao);
                end
                c=(a+b)/2;
                
                %Erro
                erro=(b-a)/2;
                
                %Gráfico
                i=i+1;
                Y(end+1)=c;
                X(end+1)=i;
            end
    display('  --');
    display(['raiz:',num2str(c),'',char(177),'',num2str(erro)]);
    
    %Término do gráfico
    plot(X,Y,'k-o','LineWidth',2,'MarkerEdgeColor','k','MarkerFaceColor','g','MarkerSize',10);
    title('Gráfico da aproximação a cada iteração');
    grid on;
    
    else
        display('Este não é um intervalo de valores válidos pois f(a)*f(b) deve ser negativo');
    end
end





