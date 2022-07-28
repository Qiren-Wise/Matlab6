clear %ɽ��ͼ
x=0:400:5600;
y=0:400:4800;
z=[370 470 550 660 670 690 671 620 580 450 400 300 100 150 250;...
   470 470 550 620 670 690 671 620 580 450 400 300 190 250 250;...
    570 470 550 680 670 690 671 1020 580 1050 400 300 100 350 250;...
    570 470 550 600 670 690 671 620 580 450 400 300 19 150 250;...
    670 470 550 680 670 1090 671 620 580 450 400 300 190 250 250;...
    670 470 550 660 670 690 671 620 580 1050 400 300 100 150 250;...
    770 470 750 860 970 1190 1071 620 580 450 400 200 100 150 250;...
    870 470 750 900 1070 690 671 620 580 1050 400 300 100 550 250;...
    870 470 850 850 670 690 671 620 580 450 400 300 100 150 250;...
    870 470 950 1100 1170 690 671 620 580 450 400 300 100 150 250;...
    1070 470 550 600 670 1090 671 1020 580 450 1000 300 100 150 250;...
    1170 470 550 1100 1270 690 671 620 880 1050 400 1000 1000 150 250;...
    1270 970 1150 1300 1270 1290 671 620 580 450 1000 300 100 150 250];
figure(1);
meshz(x,y,z);
xlabel('X'),ylabel('Y'),zlabel('Z');  %������ͼ
[xi,yi]=meshgrid(0:50:5600,0:50:4800);  %���������

figure(2);
z1i=interp2(x,y,z,xi,yi,'nearest');
surfc(xi,yi,z1i);   %��ά����ƽ��
xlabel('X'),ylabel('Y'),zlabel('Z');  % %��ά����ƽ��������ͼ

figure(3);
z2i=interp2(x,y,z,xi,yi);
surfc(xi,yi,z2i);
 xlabel('X'),ylabel('Y'),zlabel('Z');  % %��ά����ƽ��������ͼ ����ȸ�
 
 figure(4);
 z3i=interp2(x,y,z,xi,yi,'cubic');
 surfc(xi,yi,z3i);
 xlabel('X'),ylabel('Y'),zlabel('Z'); %ɽ����� �⻬����
 
 figure(5);
 subplot(1,3,1),contour(xi,yi,z1i,10,'r');%�ȸ�ͼ
 subplot(1,3,2),contour(xi,yi,z2i,15,'g');
 subplot(1,3,3),contour(xi,yi,z3i,20,'b');
 
