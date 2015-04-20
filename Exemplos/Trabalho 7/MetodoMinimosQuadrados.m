%Método dos mínimos quadrados
%Arthur Luís Komatsu Aroeira - 13/0102750

vx = input('Escreva o vetor dos pontos "x": ');
vy = input('Escreva o vetor dos pontos "y": ');

tam = size(vx);
plot(vx, vy, 'o', 'MarkerFaceColor', 'b','MarkerEdgeColor','b','MarkerSize',7);

axis([min(vx) max(vx) min(vy) max(vy)]);

vx2 = vx(1):vx(tam(2));

Vinicius=0;
Arthur=0;
for i=1:tam(2)
    Vinicius=vx(i)*vy(i)+Vinicius;
    Arthur=vx(i)^2+Arthur;
end

a=Vinicius/Arthur;

vy2 = a*vx2;

hold on

plot(vx2, vy2, 'r');
legend('(x,y)',['y= ' num2str(a) 'x'],'Location','northwest','Location','northoutside','Orientation','horizontal');

hold off