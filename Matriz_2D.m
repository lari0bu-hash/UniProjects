clc; clear all; close all;
P1A = [4 0]';
P2A = [0 4]';
line([0,4],[0,0],'color', 'red', 'LineWidth', 2); hold on;
line([0,0],[0,4],'color', 'red', 'LineWidth', 2)
plot(0,0, 'o', 'color','black','LineWidth',2)
plot(4,0, 'x', 'color','black','LineWidth',2)
plot(0,4, 'x', 'color','black','LineWidth',2)
xlim([-5,5]); ylim([-5,5]);

a=45;
R = [cosd(a), -sind(a);
     sind(a), cosd(a)];
 
 P1B = R * P1A;
 P2B = R * P2A;
 
line([0,P1B(1)],[0,P1B(2)],'color', 'yellow', 'LineWidth', 2); hold on;
line([0,P2B(1)],[0,P2B(2)],'color', 'yellow', 'LineWidth', 2)
plot(P1B(1),P1B(2), 'x', 'color','black','LineWidth',2)
plot(P2B(1),P2B(2), 'x', 'color','black','LineWidth',2)

%%
clc; clear all; close all;

P1A = [4 0]';
P2A = [0 4]';
figure;
hold on;

% Definir los límites del gráfico
xlim([-5, 5]);
ylim([-5, 5]);
axis equal;
grid on;

% Dibujar los puntos originales en el marco de referencia A
line([0, P1A(1)], [0, P1A(2)], 'color', 'red', 'LineWidth', 2);
line([0, P2A(1)], [0, P2A(2)], 'color', 'red', 'LineWidth', 2);
plot(0, 0, 'o', 'color', 'black', 'LineWidth', 2);
plot(P1A(1), P1A(2), 'x', 'color', 'black', 'LineWidth', 2);
plot(P2A(1), P2A(2), 'x', 'color', 'black', 'LineWidth', 2);

% Animación de la rotación
for a = 0:360
    R = [cosd(a), -sind(a);
         sind(a), cosd(a)];

    P1B = R * P1A;
    P2B = R * P2A;
    
    % Dibujar los puntos rotados en el marco de referencia B
    h1 = line([0, P1B(1)], [0, P1B(2)], 'color', 'yellow', 'LineWidth', 2);
    h2 = line([0, P2B(1)], [0, P2B(2)], 'color', 'yellow', 'LineWidth', 2);
    plot(P1B(1), P1B(2), 'x', 'color', 'black', 'LineWidth', 2);
    plot(P2B(1), P2B(2), 'x', 'color', 'black', 'LineWidth', 2);

    pause(0.01);

    % Borrar las líneas y puntos de la rotación anterior
    delete(h1);
    delete(h2);
end

%%
clc; clear all; close all;

clc; clear all; close all;

x = 0:0.1:10;
y = sin(x);

figure;
hold on;
grid on;
xlabel('Tiempo');
ylabel('Amplitud');
title('Seno en tiempo real');

% Inicializar gráfico
p = plot(x(1), y(1), '-r', 'LineWidth', 2);
numText = text(x(1), y(1) + 0.1, sprintf('%.2f', y(1)), 'FontSize', 12, 'Color', 'blue');

for i = 2:length(x)
    % Actualizar línea
    set(p, 'XData', x(1:i), 'YData', y(1:i));
    
    % Actualizar número
    set(numText, 'Position', [x(i), y(i) + 0.1], 'String', sprintf('%.2f', y(i)));

    pause(0.1); % Control de velocidad de actualización
end

%%
clc; clear all; close all;

x = 0:0.1:10;
y1 = sin(x);
y2 = cos(x);

figure;
hold on;
grid on;
xlabel('Tiempo');
ylabel('Amplitud');
title('Doble Leyenda en MATLAB');

% Graficar dos funciones con colores diferentes
p1 = plot(x, y1, '-r', 'LineWidth', 2);
p2 = plot(x, y2, '--b', 'LineWidth', 2);

% Primera leyenda normal
legend([p1, p2], {'Seno', 'Coseno'});

% Segunda leyenda simulada con texto
text(8, 0.8, 'Leyenda extra:', 'FontSize', 12, 'Color', 'black', 'FontWeight', 'bold');
text(8, 0.6, 'Función 1 = Seno', 'FontSize', 12, 'Color', 'red');
text(8, 0.4, 'Función 2 = Coseno', 'FontSize', 12, 'Color', 'blue');
