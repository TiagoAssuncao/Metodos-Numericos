function x=Simpson()

funcao=input('Digite a função a ser integrada: ');
a=input('Digite o "a" do intervalo [a;b]: ');
b=input('Digite o "b" do intervalo [a;b]: ');
p=input('Digite o número de pontos (deve ser ímpar e maior que 3): ');

if a>b
    aux=b;
    b=a;
    a=aux;
end

for i=1:p
    x=((b-a)*i)/(p-1)-(b-a*p)/(p-1);
    y(i)=eval(funcao);
end
h=(b-a)/(p-1);
area=0;
for i=1:2:(p-2)
    area=area+(h/3)*(y(i)+4*y(i+1)+y(i+2));
end
display(['O valor aproximado da integral é: ', num2str(area)]);

end