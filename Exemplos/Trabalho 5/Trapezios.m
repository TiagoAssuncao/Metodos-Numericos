function x=Trapezios()

funcao=input('Digite a função a ser integrada: ');
a=input('Digite o "a" do intervalo [a;b]: ');
b=input('Digite o "b" do intervalo [a;b]: ');
p=input('Digite o número de trapézios a calcular: ');
area=0;

if a>b
    aux=b;
    b=a;
    a=aux;
end

for i=0:(p-1)

    x0=a+i*(b-a)/p;
    x=a+i*(b-a)/p;
    y0=eval(funcao);

    x1=x0+(b-a)/p;
    x=x0+(b-a)/p;
    y1=eval(funcao);

    area = area+(x1-x0)*(y0+y1)/2;
    
end

display(['O valor aproximado da integral é: ', num2str(area)]);

end