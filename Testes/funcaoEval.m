% Zeros da Funcao
clc;
a = input('Insira um valor a: ');
b = input('Insira um segundo valor b: ');
erro_final = input('Informe a precisao desejada: ');

funcao = 'x^3-20';

if(a<b)
    x = a;
    funcaoPontoA = eval('x^3-20');
    
    x = b;
    funcaoPontob = eval(funcao);
    
    produtoDentreDoisPontos = funcaoPontoA*funcaoPontob;
    
    if(produtoDentreDoisPontos < 0)
        display('A funcao toca o eixo X')
        
     erro = (b-a)/2;
     pontoC = (a+b)/2;
     
     
     
     pontoExato = 0;
     while(erro >  erro_final)
         
         x = a;
         funcaoPontoA = eval('x^3-20');

         x = b;
         funcaoPontob = eval(funcao);
         
         x = pontoC;
         funcaoPontoC = eval(funcao);
         
         if((funcaoPontoA*funcaoPontoC) < 0)
             b = pontoC;
             
         elseif((funcaoPontob*funcaoPontoC) < 0)
             a = pontoC;
         else
             pontoExato = 1;
             break;
         end
         
         erro = (b-a)/2;
         pontoC = (a+b)/2;
     end
        
     display('Sua raiz eh: ')
     pontoC
     display('Com um erro de: ')
     erro
        
    else
        display('A funcao nao toca o eixo X')
    end

elseif(a==b)
   display('Os numeros deve ser diferentes')
else
    display('O valor de a deve ser menor que o de b')
end