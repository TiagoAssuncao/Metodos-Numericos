function x=Quadratura()

F=input('Digite a função a ser integrada: ');
a=input('Digite o "a" do intervalo [a;b]: ');
b=input('Digite o "b" do intervalo [a;b]: ');
n=input('Escreva o número de pontos entre 1 e 5: ');

if a>b
    aux=b;
    b=a;
    a=aux;
end
f=inline(F);

if n==1
    g=((b-a)/2)*2*f(0*(b-a)/2+(a+b)/2);
    display(['O valor aproximado da integral é: ',num2str(g)]);
end

if n==2
    g=((b-a)/2)*(f((b-a)*sqrt(3)/6+(a+b)/2)+f((a-b)*sqrt(3)/6+(a+b)/2));
    display(['O valor aproximado da integral é: ',num2str(g)]);
end

if n==3
    g=((b-a)/2)*(0.55555556*f(-0.77459667*(b-a)/2+(a+b)/2)+0.888888889*f((a+b)/2)+0.55555556*f(0.77459667*(b-a)/2+(a+b)/2));
    display(['O valor aproximado da integral é: ',num2str(g)]);
end

if n==4
    g=((b-a)/2)*(0.34785485*f(-0.86113631*(b-a)/2+(a+b)/2)+0.65214515*f(-0.33998104*(b-a)/2+(a+b)/2)+0.34785485*f(0.86113631*(b-a)/2+(a+b)/2)+0.65214515*f(0.33998104*(b-a)/2+(a+b)/2));
    display(['O valor aproximado da integral é: ',num2str(g)]);
end

if n==5
    g=((b-a)/2)*(0.23692689*f(-0.90617985*(b-a)/2+(a+b)/2)+0.47862867*f(-0.53846931*(b-a)/2+(a+b)/2)+0.56888889*f((a+b)/2)+0.23692689*f(0.90617985*(b-a)/2+(a+b)/2)+0.47862867*f(0.53846931*(b-a)/2+(a+b)/2));
    display(['O valor aproximado da integral é: ',num2str(g)]);
end

if n~=1&&n~=2&&n~=3&&n~=4&&n~=5
    display('O número de pontos deve estar entre 1 e 5');
end
end