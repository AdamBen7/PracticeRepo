%sMat = [120 -55 -75; -55 55 33; -75 33 -85];
sMat = [100 -200 300; -200 -100 400; 300 400 -500];
L1 = 0;
for i = 1:3
L1 = L1 + sMat(i,i);
end
    
I1 = sMat(1,1) + sMat(2,2) + sMat(3,3);
I2 = sMat(1,1)*sMat(2,2) + sMat(2,2)*sMat(3,3) + sMat(1,1)*sMat(3,3) - sMat(2,1).^2  - sMat(3,1).^2 - sMat(2,3).^2;
I3 = sMat(1,1)*sMat(2,2)*sMat(3,3) + 2*sMat(1,2)*sMat(3,1)*sMat(2,3) - sMat(1,1)*sMat(2,3).^2 - sMat(2,2)*sMat(1,3).^2 - sMat(3,3)*sMat(1,2).^2;

f = [1 -I1 I2 -I3];
pStress = roots(f);

%principal direction n1
sMat1 = sMat;
for i = 1:3
sMat1(i,i) = sMat1(i,i) - pStress(1);
end
disp(f)
%syms x y z
%eqn1 = sMat1(1,1)*x + sMat1(1,2)*y + sMat1(1,3)*z == 0;
%eqn2 = sMat1(2,1)*x + sMat1(2,2)*y + sMat1(2,3)*z == 0;
%eqn3 = x.^2 + y.^2 + z.^2 == 1;

%[A,B] = equationsToMatrix([eqn1, eqn2, eqn3],[x,y,z]);

%disp(eig(sMat1));
%disp(pStress(3));
%disp(sMat);
%disp(sMat1);
