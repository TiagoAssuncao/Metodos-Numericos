%Trabalho 2 - Metodo da Posicao Falsa

clc;
% funcao = input('Entre com a funcao: ');
% rangeA = input('Digite o limite A: ');
% rangeB = input('Digite o limite B: ');
% erroMaximo = input('Digigite um valor para o erro: ');

hand = recebeDadosJogoBissecao;
waitfor(hand);
load arq;


if(rangeA > rangeB)
    changeValues = rangeB;
    rangeB = rangeA;
    rangeA= rangeB;
else
    %nothig to do
end

a = rangeA;
b = rangeB;

x = rangeA;
funcaoPontoA = eval(funcao);

x = rangeB;
funcaoPontob = eval(funcao);

produtoDentreDoisPontos = funcaoPontoA*funcaoPontob;
if(produtoDentreDoisPontos < 0)
	display('A funcao toca o eixo X')

     erro = (b-a)/2;
     %Método da posição falsa
     pontoC = (a*funcaoPontob - b*funcaoPontoA)/(funcaoPontob - funcaoPontoA);



     pontoExato = 0;
     while(erro >  erroMaximo)

         x = a;
         funcaoPontoA = eval(funcao);

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
     
     if((rangeA < pontoC)&&(rangeB > pontoC))
         
         apresentaJogoBissecao;
         save arq2 pontoC a b erro;
         waitfor(apresentaJogoBissecao);
         
    
     else
         display('A resposta esta fora do range Digitado')         
     end
     
 else
        display('A funcao nao toca o eixo X')
end