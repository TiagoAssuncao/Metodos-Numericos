%Zeros de Funções - Método de Newton-Raphson

function x=NewtonRaphson()

%Input
funcao=input('Digite a função que deseja encontrar uma raiz: ');
a=input('Insira o Valor: ');
erro_final=input('Informe a precisão desejada: ');

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

%Gráfico
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
end

%Término do gráfico
plot(X,Y,'k-o','LineWidth',2,'MarkerEdgeColor','k','MarkerFaceColor','g','MarkerSize',10);
title('Gráfico da aproximação a cada iteração');
grid on;
