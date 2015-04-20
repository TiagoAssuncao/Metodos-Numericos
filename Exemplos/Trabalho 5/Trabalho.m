%Programa em que o usuário escolhe qual método de integração
%Arthur Luís Komatsu Aroeira 13/0102750

b=1;
while b==1
    
    %Input
    fprintf('Digite qual o método de sua preferência para achar numericamente a integral da função:\n\n');
    fprintf('1 - Método dos Trapézios \n')
    fprintf('2 - Método 1/3 de Simpson\n')
    fprintf('3 - Método da Quadratura Gaussiana\n')
    fprintf('\n');
    a=input('');
    fprintf('\n');

    %Métodos
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
    display('Deseja tentar novamente com outro método? (1 - Sim, 2 - Não)');
    b=input('');
end