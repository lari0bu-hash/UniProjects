clc; clear all; close all;

%MARCO DE REFERENCIA FIJO AL CUERPO%
p1 = [10 0 0]';
p2 = [0 10 0]';
p3 = [0 0 10]';

plot3(p1(1),p1(2),p1(3), 'x', 'color', 'red', 'LineWidth',2);hold on;
plot3(p2(1),p2(2),p2(3), 'x', 'color', 'red', 'LineWidth',2);hold on;
plot3(p3(1),p3(2),p3(3), 'x', 'color', 'red', 'LineWidth',2),hold on;

line([0,p1(1)],[0,p1(2)],[0,p1(3)],'color','red','Linewidth', 2); hold on;
line([0,p2(1)],[0,p2(2)],[0,p2(3)],'color','red','Linewidth', 2); hold on;
line([0,p3(1)],[0,p3(2)],[0,p3(3)],'color','red','Linewidth', 2); hold on;
view(2)

L1 = 2 ; L2 = 3; q2 = 90; q1 = 45;

p1A = [L1, 0, 0]';
p2A = [L2, 0, 0]';
Rz1 = [cosd(q1) -sind(q1) 0;
        sind(q1) cosd(q1) 0;
        0 0 1] ;
Rz2 = [cosd(q2) -sind(q2) 0;
        sind(q2) cosd(q2) 0;
        0 0 1] ;
ceros = [0 0 0]';

H0A = [Rz1 , ceros
        0 0 0 1]
    
HAB = [eye(3,3), p1A
        0 0 0 1]
    
HBC = [Rz2 , ceros
        0 0 0 1]
    
HCF = [eye(3,3), p2A
        0 0 0 1]
    
H0B = H0A * HAB
HBF = HBC * HCF
H0F = H0B + HBF

posx = H0F(1,4)
posy = H0F(2,4)
posz = H0F(3,4)
 
 
 p1B = Rz1 * p1A;
 
 plot3(p1B(1),p1B(2),p1B(3), 'x', 'color', 'blue', 'LineWidth',2);hold on;
line([0,p1B(1)],[0,p1B(2)],[0,p1B(3)],'color','blue','Linewidth', 2); hold on;

p1C = p1B + Rz2 * p2A;

plot3(p1C(1),p1C(2),p1C(3), 'x', 'color', 'cyan', 'LineWidth',2);hold on;
line([p1B(1),p1C(1)],[p1B(2),p1C(2)],[p1B(3),p1C(3)],'color','cyan','Linewidth', 2); hold on;
