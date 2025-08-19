clc; clear all; close all;
p1 = [1 0 0];
p2 = [0 1 0];
p3 = [0 0 1];
xlim([-10.5,1.5]); ylim([-1.5,1.5]); zlim([-1.5, 1.5]);

for q1 = 0:45
  
subplot(1,2,1);

plot3(p1(1),p1(2),p1(3),'x','color','red', 'LineWidth', 2); hold on;
plot3(p2(1),p2(2),p2(3),'x','color','red', 'LineWidth', 2); hold on;
plot3(p3(1),p3(2),p3(3),'x','color','red', 'LineWidth', 2); hold on;
grid minor;
line([0, p1(1)], [0,p1(2)], [0, p1(3)], 'color','red','LineWidth', 1.5 );hold on; 
line([0, p2(1)], [0,p2(2)], [0, p2(3)], 'color','red','LineWidth', 1.5 ); hold on;
line([0, p3(1)], [0,p3(2)], [0, p3(3)], 'color','red','LineWidth', 1.5 ); hold on;

L1 = 0.5 ; L2 = 0.8; q2 = 90;

p1A = [L1, 0, 0]';
Rz1 = [cosd(q1) -sind(q1) 0;
        sind(q1) cosd(q1) 0;
        0 0 1] ;
    
p1B = Rz1 * p1A;
%p1Bx = L1 * cosd(q1); p1By = L1 * sind(q1); p1Bz = 0;

A1 = plot3(p1B(1),p1B(2),p1B(3), 'o', 'color', 'blue', 'LineWidth',2); hold on;
A2 =line([0,p1B(1)],[0,p1B(2)],[0,p1B(3)],'color','blue','Linewidth', 2); hold on;

p1C = [L2, 0, 0]';
Rz2 = [cosd(q1+q2) -sind(q1+q2) 0;
        sind(q1+q2) cosd(q1+q2) 0;
        0 0 1];
p1D = p1B + Rz2*p1C;

B1 = plot3(p1D(1),p1D(2),p1D(3), 'o', 'color', 'k', 'LineWidth',2); hold on;
B2 = line([p1B(1),p1D(1)],[p1B(2),p1D(2)],[p1B(3),p1D(3)],'color','k','Linewidth', 3); hold on;

view(100,20);

 
    subplot(1,2,2);
    plot3(p1(1),p1(2),p1(3),'x','color','red', 'LineWidth', 2); hold on;
    plot3(p2(1),p2(2),p2(3),'x','color','red', 'LineWidth', 2); hold on;
    plot3(p3(1),p3(2),p3(3),'x','color','red', 'LineWidth', 2); hold on;
    grid minor;
    line([0, p1(1)], [0,p1(2)], [0, p1(3)], 'color','red','LineWidth', 1.5 );hold on; 
    line([0, p2(1)], [0,p2(2)], [0, p2(3)], 'color','red','LineWidth', 1.5 ); hold on;
    line([0, p3(1)], [0,p3(2)], [0, p3(3)], 'color','red','LineWidth', 1.5 ); hold on;

    L1 = 0.5 ; L2 = 0.8; q2 = 90;

    p1A = [L1, 0, 0]';

    Rz1 = [cosd(q1) -sind(q1) 0;
        sind(q1) cosd(q1) 0;
        0 0 1] ;

    p1B = Rz1 * p1A;
    %p1Bx = L1 * cosd(q1); p1By = L1 * sind(q1); p1Bz = 0;

    C1 = plot3(p1B(1),p1B(2),p1B(3), 'o', 'color', 'blue', 'LineWidth',2); hold on;
    C2 = line([0,p1B(1)],[0,p1B(2)],[0,p1B(3)],'color','blue','Linewidth', 2); hold on;

    p1C = [L2, 0, 0]';
    Rz2 = [cosd(q1+q2) -sind(q1+q2) 0;
        sind(q1+q2) cosd(q1+q2) 0;
        0 0 1];
    p1D = p1B + Rz2*p1C;

    D1 = plot3(p1D(1),p1D(2),p1D(3), 'o', 'color', 'k', 'LineWidth',2); hold on;
    D2 = line([p1B(1),p1D(1)],[p1B(2),p1D(2)],[p1B(3),p1D(3)],'color','k','Linewidth', 3)
    hold on;

    view(2);
    pause(0.01);
    delete(A1); delete(A2); delete(B1); delete(B2); delete(C1); delete(C2); delete(D1); delete(D2);
end
 
A1 = plot3(p1B(1),p1B(2),p1B(3), 'o', 'color', 'blue', 'LineWidth',2); hold on;
A2 =line([0,p1B(1)],[0,p1B(2)],[0,p1B(3)],'color','blue','Linewidth', 2); hold on;

B1 = plot3(p1D(1),p1D(2),p1D(3), 'o', 'color', 'k', 'LineWidth',2); hold on;
B2 = line([p1B(1),p1D(1)],[p1B(2),p1D(2)],[p1B(3),p1D(3)],'color','k','Linewidth', 3); hold on;

C1 = plot3(p1B(1),p1B(2),p1B(3), 'o', 'color', 'blue', 'LineWidth',2); hold on;
C2 = line([0,p1B(1)],[0,p1B(2)],[0,p1B(3)],'color','blue','Linewidth', 2); hold on;

D1 = plot3(p1D(1),p1D(2),p1D(3), 'o', 'color', 'k', 'LineWidth',2); hold on;
D2 = line([p1B(1),p1D(1)],[p1B(2),p1D(2)],[p1B(3),p1D(3)],'color','k','Linewidth', 3); hold on;