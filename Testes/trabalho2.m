% Trabalho 2 - Jogo sobre o M�todo da Bisse��o

clc;

display('Mortal Kombat Raiz');

funcao = input('Entre com a fun��o: ');
a = input('Entre com o valor de a: ');
b = input('Entre com o valor de b: ');
erro_y = input('Entre com o valor de erro: ');  % erro_y -> |f(x)|<=erro_y

if (a>=b)
    display('Voc� perdeu.')
else
   x=a;
   f_a = eval(funcao);
   x=b;
   f_b = eval(funcao);
   
   if (f_a*f_b<0)
%        display('Existe pelo menos uma raiz no intervalo')
%        display('Iniciando jogo...')
%        pause(1);
%        display('Carregando biblioteca de script...')
%        pause(.3);
%        clc;
%        display('Carregando Engine de Rede Neural.')
%        pause(1);
%        clc;
%        display('Carregando Engine de Rede Neural..')
%        pause(1);
%        clc;
%        display('Carregando Engine de Rede Neural...')
%        pause(1);
%        clc;
%        display('Carregando Engine de Rede Neural....')
%        pause(1);
%        clc;
%        display('Carregando Engine de Rede Neural.....')
%        pause(1);
       clc;
       
       x = linspace(0,2*pi,100);
       
       
       while(1)
       chute = input('D� o seu melhor golpe: ');
       
       
       
       x = chute;
       f_chute = eval(funcao);
       
       if (abs(f_chute)<=erro_y)
           
           display('Voc� venceu!');
           break;
           
       else
           display('Voc� n�o venceu!');
           if (f_a*f_chute<0)
              display(['A raiz est� entre ' num2str(a) ' e ' num2str(chute)]); 
              b=chute;
           else
              display(['A raiz est� entre ' num2str(chute) ' e ' num2str(b)]);                
              a=chute;
           end
           
           c = (a+b)/2;
           
           display('Agora � minha vez...')
           pause(1);
           display('Duas vezes para tr�s, quadrado!')
           pause(1.5);
           clc;
           display(['Get over Here! : ' num2str(c)]);
           
           x = c;
           f_c = eval(funcao);
           
           if (abs(f_c)<=erro_y)
               display('Eu acertei a raiz pequeno gafanhoto.');
               display('Voc� precisa treinar mais!');
               break;
           else
               display('Continua o jogo');
           end
           
       end
       
       end
       
   else
       display('Voc� perdeu!');
   end
   
end






