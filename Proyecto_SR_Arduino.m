clc; clear all; close all;
disp(' B I E N V E N I D O ! ! ')
% Conexión con Arduino
a = arduino('COM10', 'Mega2560', 'Libraries', 'Servo');
disp(' ')
disp('INICIANDO...')
servo1 = servo(a, 'D9'); % Pin 9 para el primer servo
servo2 = servo(a, 'D10'); % Pin 10 para el segundo servo
%%
writePosition(servo1, 0);
writePosition(servo2, 0);
pause(1);
%%
disp(' ')
disp('TODO LISTO!!')
% Configuración de visualización
p1 = [9 0 0];
p2 = [0 9 0];
p3 = [0 0 9];
xlim([-9, 9]); ylim([-9, 9]); zlim([-9, 9]);

L1 = 5.25; % Longitud del primer eslabón (6'')
L2 = 3.25; % Longitud del segundo eslabón (4'')
q2 = 125; % Ángulo fijo del segundo eslabón
theta2_normalized = (q2 / 180) + 0.01; % Normalizar ángulo a rango [0, 1]
fprintf('El valor normalizado de theta2 es: %.2f\n', theta2_normalized);
writePosition(servo2, theta2_normalized);   


for q1 = 0:80
    % Cinemática y visualización
    subplot(1, 2, 1);

    plot3(p1(1), p1(2), p1(3), 'x', 'color', 'red', 'LineWidth', 2); hold on;
    plot3(p2(1), p2(2), p2(3), 'x', 'color', 'red', 'LineWidth', 2); hold on;
    plot3(p3(1), p3(2), p3(3), 'x', 'color', 'red', 'LineWidth', 2); hold on;
    grid minor;

    line([0, p1(1)], [0, p1(2)], [0, p1(3)], 'color', 'red', 'LineWidth', 1.5); hold on;
    line([0, p2(1)], [0, p2(2)], [0, p2(3)], 'color', 'red', 'LineWidth', 1.5); hold on;
    line([0, p3(1)], [0, p3(2)], [0, p3(3)], 'color', 'red', 'LineWidth', 1.5); hold on;

    p1A = [L1, 0, 0]';
    Rz1 = [cosd(q1) -sind(q1) 0; sind(q1) cosd(q1) 0; 0 0 1];
    p1B = Rz1 * p1A;

    A1 = plot3(p1B(1), p1B(2), p1B(3), 'o', 'color', 'blue', 'LineWidth', 2); hold on;
    A2 = line([0, p1B(1)], [0, p1B(2)], [0, p1B(3)], 'color', 'blue', 'Linewidth', 2); hold on;

    p1C = [L2, 0, 0]';
    Rz2 = [cosd(q1 + q2) -sind(q1 + q2) 0; sind(q1 + q2) cosd(q1 + q2) 0; 0 0 1];
    p1D = p1B + Rz2 * p1C;

    B1 = plot3(p1D(1), p1D(2), p1D(3), 'o', 'color', 'k', 'LineWidth', 2); hold on;
    B2 = line([p1B(1), p1D(1)], [p1B(2), p1D(2)], [p1B(3), p1D(3)], 'color', 'k', 'Linewidth', 3); hold on;

    view(100, 20);

    % Enviar datos a los servos
    theta1_normalized = q1 / 180; % Normalizar ángulo a rango [0, 1]
    writePosition(servo1, theta1_normalized);
    

    % Visualización adicional
    subplot(1, 2, 2);
    C1 = plot3(p1B(1), p1B(2), p1B(3), 'o', 'color', 'blue', 'LineWidth', 2); hold on;
    C2 = line([0, p1B(1)], [0, p1B(2)], [0, p1B(3)], 'color', 'blue', 'Linewidth', 2); hold on;

    D1 = plot3(p1D(1), p1D(2), p1D(3), 'o', 'color', 'k', 'LineWidth', 2); hold on;
    D2 = line([p1B(1), p1D(1)], [p1B(2), p1D(2)], [p1B(3), p1D(3)], 'color', 'k', 'Linewidth', 3); hold on;
    view(2);
    grid minor;
   

    pause(0.01); % Pausa para animación

    % Limpiar visualización
    delete(A1); delete(A2); delete(B1); delete(B2);
    delete(C1); delete(C2); delete(D1); delete(D2);
end
subplot(1, 2, 1);

plot3(p1(1), p1(2), p1(3), 'x', 'color', 'red', 'LineWidth', 2); hold on;
plot3(p2(1), p2(2), p2(3), 'x', 'color', 'red', 'LineWidth', 2); hold on;
plot3(p3(1), p3(2), p3(3), 'x', 'color', 'red', 'LineWidth', 2); hold on;


line([0, p1(1)], [0, p1(2)], [0, p1(3)], 'color', 'red', 'LineWidth', 1.5); hold on;
line([0, p2(1)], [0, p2(2)], [0, p2(3)], 'color', 'red', 'LineWidth', 1.5); hold on;
line([0, p3(1)], [0, p3(2)], [0, p3(3)], 'color', 'red', 'LineWidth', 1.5); hold on;

A1 = plot3(p1B(1), p1B(2), p1B(3), 'o', 'color', 'blue', 'LineWidth', 2); hold on;
A2 = line([0, p1B(1)], [0, p1B(2)], [0, p1B(3)], 'color', 'blue', 'Linewidth', 2); hold on;
    
B1 = plot3(p1D(1), p1D(2), p1D(3), 'o', 'color', 'k', 'LineWidth', 2); hold on;
B2 = line([p1B(1), p1D(1)], [p1B(2), p1D(2)], [p1B(3), p1D(3)], 'color', 'k', 'Linewidth', 3); hold on;
grid minor;

subplot(1, 2, 2);

C1 = plot3(p1B(1), p1B(2), p1B(3), 'o', 'color', 'blue', 'LineWidth', 2); hold on;
C2 = line([0, p1B(1)], [0, p1B(2)], [0, p1B(3)], 'color', 'blue', 'Linewidth', 2); hold on;
    
D1 = plot3(p1D(1), p1D(2), p1D(3), 'o', 'color', 'k', 'LineWidth', 2); hold on;
D2 = line([p1B(1), p1D(1)], [p1B(2), p1D(2)], [p1B(3), p1D(3)], 'color', 'k', 'Linewidth', 3); hold on;
view(2); grid minor;

fprintf('La ubicación del último punto es: X = %.2f, Y = %.2f, Z = %.2f\n', p1D(1), p1D(2), p1D(3));