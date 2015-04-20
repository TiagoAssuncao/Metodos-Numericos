%Programa em que o usuário escolhe qual método de sistema linear
%Arthur Luís Komatsu Aroeira 13/0102750

B=1;
while B==1
    
    %Input
    fprintf('Digite qual o método de sua preferência para resolver o sistema linear:\n\n');
    fprintf('1 - Regra de Cramer \n');
    fprintf('2 - Método de eliminação de Gauss \n');
    fprintf('3 - Método da Fatoração LU (Com esse método, você poderá trocar a matriz dos resultados)\n');
    fprintf('4 - Método Iterativo de Gauss-Jacobi\n');
    fprintf('5 - Método Iterativo de Gauss-Seidel\n\n');
    a=input('');
    fprintf('\n');
    
    while a~=1&&a~=2&&a~=3&&a~=4&&a~=5
        display('Deve ser um 1, 2, 3, 4 ou 5!');
        a=input('');
    end
    
    display('Você deseja escrever a matriz já completa ou ir escrevendo os valores um por um?');
    fprintf('\n');
    display('1 - Matriz completa');
    display('2 - Um por um');
    M=input('');
    
        
    while M~=1&&M~=2
        display('Deve ser um 1 ou 2!');
        M=input('');
    end
    
    fprintf('\n');
    
    if M==1
    display('Digite a matriz dos coeficientes');
    v=input('');
    fprintf('\n');
    display('Digite a matriz dos resultados');
    b=input('');

    else
    n=input('Insira quantas incógnitas possui o sistema: ');
    while(n<0||n~=floor(n))
        n=input('Insira quantas incógnitas possui o sistema: ');
        display('O valor de incógnitas deve ser um inteiro positivo!')
    end
    fprintf('\nO sistema será algo do tipo: \n\n');

    for i=1:n
        fprintf('|');
        for j=1:n
            if j ~= (n)
                fprintf(['v(' num2str(i) ',' num2str(j) ') ']);
            else
                fprintf(['v(' num2str(i) ',' num2str(j) ')']);
                fprintf('|  |');
                fprintf(['x(' num2str(i) ')']);
                fprintf('|');
                if (i==floor(n/2)+1&&j==n)
                    fprintf(['  =  |b(' num2str(i) ')'])
                end
                if (i~=floor(n/2)+1&&j==n)
                fprintf(['     |b(' num2str(i) ')']);
                end
            end
        end
        fprintf('|');
        fprintf('\n');
    end
    fprintf(['\nInsira os valores da matriz ' num2str(n) 'x' num2str(n) ' dos coeficientes:\n' ]);

    for i=1:n
        for j=1:n
            v(i,j) = input(['Digite o valor de v(' num2str(i) ',' num2str(j) '): ']);
        end
    end
    fprintf('\nInsira os valores da matriz dos resultados: \n');

    for i=1:n
        b(i) = input(['Digite o valor de b(' num2str(i) '): ']);
    end
    end
        
    fprintf('\n');
    
    %Métodos
    if a==1
        Cramer(v,b);
    end

    if a==2
        SistemaLinearGauss(v,b);
    end

    if a==3
        LU(v,b);
    end

    if a==4
        GaussJacobi(v,b);
    end
    
    if a==5
        GaussSeidel(v,b);
    end
    
    display('Deseja tentar novamente com outro método? (1 - Sim, 2 - Não)');
    B=input('');
end