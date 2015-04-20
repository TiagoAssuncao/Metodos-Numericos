%Zeros de Fun��es - M�todo de Newton-Raphson

function x=NewtonRaphson()

%Input
funcao=input('Digite a fun��o que deseja encontrar uma raiz: ');
a=input('Insira o Valor: ');
erro_final=input('Informe a precis�o desejada: ');

%Calculando a derivada
dx=0.0001;
x=a-dx/2;
fa=eval(funcao);
x=a+dx/2;
fb=eval(funcao);
derivada=(fb-fa)/dx;

%Implantando o Newton
x=a;
y=eval(funcao);
a=a-(y/derivada);

%Erro
x=a;
y=eval(funcao);
erro=abs(y);

%Gr�fico
i=1;
Y=[a];
X=[1];

while(erro>erro_final && a ~=  Inf)
    
    %Calculando a derivada
    dx=0.01;
    x=a-dx/2;
    fa=eval(funcao);
    x=a+dx/2;
    fb=eval(funcao);
    derivada=(fb-fa)/dx;
    
    %Implantando o Newton
    x=a;
    y=eval(funcao);
    a=a-(y/derivada);

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
end

%T�rmino do gr�fico
plot(X,Y,'k-o','LineWidth',2,'MarkerEdgeColor','k','MarkerFaceColor','g','MarkerSize',10);
title('Gr�fico da aproxima��o a cada itera��o');
grid on;
