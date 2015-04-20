%Programa em que o usuário escolhe qual método de zero de função escolher
%Arthur Luís Komatsu Aroeira 13/0102750

b=1;
while b==1
    
    %Input
    fprintf('Digite qual o método de sua preferência para achar a raiz de uma função:\n\n');
    fprintf('1 - Método da Bissecção \n')
    fprintf('2 - Método da Posição Falsa \n')
    fprintf('3 - Método do Ponto Fixo\n')
    fprintf('4 - Método de Newton Raphson\n\n')
    a=input('');
    fprintf('\n');

    %Métodos
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
    display('Deseja tentar novamente com outro método? (1 - Sim, 2 - Não)');
    b=input('');
end