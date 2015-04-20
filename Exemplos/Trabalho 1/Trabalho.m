%Programa em que o usu�rio escolhe qual m�todo de zero de fun��o escolher
%Arthur Lu�s Komatsu Aroeira 13/0102750

b=1;
while b==1
    
    %Input
    fprintf('Digite qual o m�todo de sua prefer�ncia para achar a raiz de uma fun��o:\n\n');
    fprintf('1 - M�todo da Bissec��o \n')
    fprintf('2 - M�todo da Posi��o Falsa \n')
    fprintf('3 - M�todo do Ponto Fixo\n')
    fprintf('4 - M�todo de Newton Raphson\n\n')
    a=input('');
    fprintf('\n');

    %M�todos
    if a==1
        MetodoBisseccao();
    end

    if a==2
        PoiscaoFalsa();
    end

    if a==3
        PontoFixo();
    end

    if a==4
        NewtonRaphson()
    end
    
    fprintf('\n');
    display('Deseja tentar novamente com outro m�todo? (1 - Sim, 2 - N�o)');
    b=input('');
end