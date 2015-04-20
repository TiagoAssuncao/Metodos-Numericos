%Zeros de Funções - Método do Ponto Fixo

function x=PontoFixo()

%Input
funcao=input('Digite a função que deseja encontrar uma raiz: ');
funcao_iterativa=input('Digite a função iterativa phi(x): ');
a=input('Insira o Valor: ');
erro_final=input('Informe a precisão desejada: ');
    
%Método do ponto fixo
x=a;
a=eval(funcao_iterativa);
y=eval(funcao);

%Erro
x=a;
y=eval(funcao);
erro=abs(y);

%Gráfico
i=1;
Y=[a];
X=[1];
    
while(erro>erro_final && a~= Inf)

    %Método do ponto fixo
    x=a;
    a=eval(funcao_iterativa);
    y=eval(funcao);
    
    %Erro
    x=a;
    y=eval(funcao);
    erro=abs(y);
    
    %Gráfico
    i=i+1;
    Y(end+1)=a;
    X(end+1)=i;
end

%Resultado final
if(a==Inf)
    display('Não foi possível encontrar a raiz!');
else
    display(['raiz:',num2str(a)]);
    
    %Término do gráfico
    plot(X,Y,'k-o','LineWidth',2,'MarkerEdgeColor','k','MarkerFaceColor','g','MarkerSize',10);
    title('Gráfico da aproximação a cada iteração');
    grid on;
end