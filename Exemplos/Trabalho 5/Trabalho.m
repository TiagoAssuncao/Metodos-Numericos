%Programa em que o usu�rio escolhe qual m�todo de integra��o
%Arthur Lu�s Komatsu Aroeira 13/0102750

b=1;
while b==1
    
    %Input
    fprintf('Digite qual o m�todo de sua prefer�ncia para achar numericamente a integral da fun��o:\n\n');
    fprintf('1 - M�todo dos Trap�zios \n')
    fprintf('2 - M�todo 1/3 de Simpson\n')
    fprintf('3 - M�todo da Quadratura Gaussiana\n')
    fprintf('\n');
    a=input('');
    fprintf('\n');

    %M�todos
    if a==1
        Trapezios();
    end

    if a==2
        Simpson();
    end

    if a==3
        Quadratura();
    end

    fprintf('\n');
    display('Deseja tentar novamente com outro m�todo? (1 - Sim, 2 - N�o)');
    b=input('');
end