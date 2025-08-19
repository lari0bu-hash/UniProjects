clc; clear all; close all;

%MARCO DE REFERENCIA FIJO AL CUERPO%
p1 = [10 0 0]';
p2 = [0 10 0]';
p3 = [0 0 10]';
xlim([-10.5,10.5]); ylim([-10.5,10.5]); zlim([-10.5, 10.5]);

plot3(p1(1),p1(2),p1(3), 'x', 'color', 'red', 'LineWidth',2);hold on;
plot3(p2(1),p2(2),p2(3), 'x', 'color', 'red', 'LineWidth',2);hold on;
plot3(p3(1),p3(2),p3(3), 'x', 'color', 'red', 'LineWidth',2),hold on;

line([0,p1(1)],[0,p1(2)],[0,p1(3)],'color','red','Linewidth', 2); hold on;
line([0,p2(1)],[0,p2(2)],[0,p2(3)],'color','red','Linewidth', 2); hold on;
line([0,p3(1)],[0,p3(2)],[0,p3(3)],'color','red','Linewidth', 2); hold on;
view(2)

xlabel('X');
ylabel('Y');
title('Cinematica Inversa SCARA 2D');
grid on;

L1 = 2 ; L2 = 3; xb = 5; yb = 0;

texto_q1 = text(5, 5, 'Ángulo Eslabón 1: 0°', 'FontSize', 10, 'Color', 'black');
texto_q2 = text(5, 4, 'Ángulo Eslabón 2: 0°', 'FontSize', 10, 'Color', 'magenta');

for t = 0:0.05:10
    xb = xb - 0.01;
    yb = yb + 0.02;

coseq2 = (xb^2 + yb^2 - L2^2 - L1^2)/(2*L1*L2);

senoq2 = real(sqrt((1- coseq2^2)));

q2 = atan2d(senoq2,coseq2);

q1 = atan2d(yb,xb) - atan2d((L2* senoq2),(L1 + (L2 * coseq2)));


%CINEMATICA DIRECTA ESLABO 1
p1A = [L1, 0, 0]';
Rz1 = [cosd(q1) -sind(q1) 0;
        sind(q1) cosd(q1) 0;
        0 0 1] ;
    
p1B = Rz1 * p1A;
A1 = plot3(p1B(1),p1B(2),p1B(3), 'o', 'color', 'black', 'LineWidth',2);
A2 =line([0,p1B(1)],[0,p1B(2)],[0,p1B(3)],'color','black','Linewidth', 2);

%CINEMATICA DIRECTA ESLABO 1
p1C = [L2, 0, 0]';
Rz2 = [cosd(q1+q2) -sind(q1+q2) 0;
        sind(q1+q2) cosd(q1+q2) 0;
        0 0 1];
    
p1D = p1B + Rz2*p1C;

B1 = plot3(p1D(1),p1D(2),p1D(3), 'o', 'color', 'magenta', 'LineWidth',2);
B2 = line([p1B(1),p1D(1)],[p1B(2),p1D(2)],[p1B(3),p1D(3)],'color','magenta','Linewidth', 3);

C  = plot3(xb,yb,0, 'o', 'color', 'blue', 'LineWidth',2);

 set(texto_q1, 'String', sprintf('Ángulo Eslabón 1: %.2f°', q1));
 set(texto_q2, 'String', sprintf('Ángulo Eslabón 2: %.2f°', q2));


legend([A2, B2, C], {'Eslabon 1', 'Eslabon 2', 'Posicion Efector final'});

    pause(0.001);
    delete(A1); delete(A2); delete(B1); delete(B2); delete(C);
end
 
A1 = plot3(p1B(1),p1B(2),p1B(3), 'o', 'color', 'black', 'LineWidth',2); hold on;
A2 =line([0,p1B(1)],[0,p1B(2)],[0,p1B(3)],'color','black','Linewidth', 2); hold on;

B1 = plot3(p1D(1),p1D(2),p1D(3), 'o', 'color', 'magenta', 'LineWidth',2); hold on;
B2 = line([p1B(1),p1D(1)],[p1B(2),p1D(2)],[p1B(3),p1D(3)],'color','magenta','Linewidth', 3); hold on;
C  = plot3(xb,yb,0, 'o', 'color', 'blue', 'LineWidth',2);

legend([A2, B2, C], {'Eslabon 1', 'Eslabon 2', 'Posicion Efector final'});
text(5, 3, sprintf('Posición Final: (%.2f, %.2f)', xb, yb), 'FontSize', 12, 'Color', 'blue', 'FontWeight', 'bold');

