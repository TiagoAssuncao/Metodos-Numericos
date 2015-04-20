%Zeros de Fun��es - M�todo do Ponto Fixo

function x=PontoFixo()

%Input
funcao=input('Digite a fun��o que deseja encontrar uma raiz: ');
funcao_iterativa=input('Digite a fun��o iterativa phi(x): ');
a=input('Insira o Valor: ');
erro_final=input('Informe a precis�o desejada: ');
    
%M�todo do ponto fixo
x=a;
a=eval(funcao_iterativa);
y=eval(funcao);

%Erro
x=a;
y=eval(funcao);
erro=abs(y);

%Gr�fico
i=1;
Y=[a];
X=[1];
    
while(erro>erro_final && a~= Inf)

    %M�todo do ponto fixo
    x=a;
    a=eval(funcao_iterativa);
    y=eval(funcao);
    
    %Erro
    x=a;
    y=eval(funcao);
    erro=abs(y);
    
    %Gr�fico
    i=i+1;
    Y(end+1)=a;
    X(end+1)=i;
end

%Resultado final
if(a==Inf)
    display('N�o foi poss�vel encontrar a raiz!');
else
    display(['raiz:',num2str(a)]);
    
    %T�rmino do gr�fico
    plot(X,Y,'k-o','LineWidth',2,'MarkerEdgeColor','k','MarkerFaceColor','g','MarkerSize',10);
    title('Gr�fico da aproxima��o a cada itera��o');
    grid on;
end