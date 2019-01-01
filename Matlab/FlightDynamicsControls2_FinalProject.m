%Business Jet: Jetstar at Mach = 0.80
clear;clc;
prompt = ('Options: (1)Boeing (2)Jetstar1 (3)McDonnell F-4: ');
    option1 = input(prompt);
switch option1
    case 1
        CL0 = 0.5; CD0 = 0.042; CLa = 5.5; CDalpha = 0.47; CMalpha = -1.6; CLalphadot = 0.006;
        CMalphadot = -9.0; CLq = 6.58; CMq = -25.0; CLM = 0.2;
        CDM = 0.25; CMM = -.10; CLdeltae = .3; CMdeltae = -1.2;
        CyB = -.85; ClB = -.10; CnB = .2; Clp = -.30;
        Cnp = .20; Clr = .20; Cnr = -0.325; Clda = 0.014; 
        Cnda = 0.003; Cydr = 0.075; Cldr = 0.005; Cndr = -0.09;
 
        W = 636600;
        Ix = 18.28*10^6; Iy = 33.1*10^6; Iz = 49.7*10^6; Ixz = .97*10^6; 
        S = 5500; b = 195.68; c = 27.31; 
        AR = b^2/S;
        T = 389.97; Mach = .9; density = 5.8727*10^(-4); gamma = 1.4; R = 1716; 
 
    case 2
        CL0 = 0.4; CD0 = 0.04; CLa = 6.5; CDalpha = 0.60; CMalpha = -0.72; CLalphadot = 0.0;
        CMalphadot = -.4; CLq = 0.0; CMq = -0.92; CLM = 0.0;
        CDM = -0.6; CMM = -0.60; CLdeltae = 0.44; CMdeltae = -0.88;
        CyB = -0.75; ClB = -0.06; CnB = 0.13; Clp = -0.42;
        Cnp = -0.756; Clr = 0.04; Cnr = -0.16; Clda = 0.060; 
        Cnda = -0.06; Cydr = 0.16; Cldr = 0.029; Cndr = -0.057;
 
        W = 38200;
        Ix = 118773; Iy = 135869; Iz = 243504; Ixz = 5061; 
        S = 542.5; b = 53.75; c = 10.93; %c is cbar
        AR = b^2/S;
        T = 389.97; Mach = .80; density = 5.87*10^(-4); gamma = 1.4; R = 1716; 
 
    case 3
        CD0 = 0.0205; CDu = 0.027; CDalpha = 0.3; CTxu = -0.064; 
        CL0 = 0.100; CLu = 0.270; CLa = 3.75; CLalphadot = 0.86; 
        CLq = 1.80; CM0 = 0.025; CMalpha = -.400; CMalphadot = -1.300;
        CMq = -2.70; CMTu = 0; CMTalpha = 0;
 
        %Longitudinal Control and Hinge Moment Derivatives;
        %considered non applicable but found values later
        CLdeltae = 0.400; CDdeltae = -0.1000; CMdeltae = -0.5800;
        %can find CDih,CLih, CMih
 
        ClB = -0.80; Clp = -0.24; Clr = 0.70; CyB = -0.680; Cyp = 0; Cyr = 0;
        CnB = 0.125; CnTB = 0; Cnp = -0.036; Cnr = -0.270;
 
        Clda = 0.0420; Cldr = 0.0060; Cyda = -0.0160;
        Cydr = 0.095; Cnda = -0.0010; Cndr = -0.066;
 
        %ignored all Ch derivatives...
 
        %delete these
        CLM = 0; CDM = 0; CMM = 0;
 
        W = 39000;
        Ix = 25000; Iy = 122200; Iz = 139800; Ixz = 2200; 
        S = 530; b = 38.7; c = 16.0; 
        AR = b^2/S;
 
        %@height = 35000, 
        T = 393.854; density = 0.000736627;
        Mach = 0.9; gamma = 1.4; R = 1716;
end
 
g = 32.2; m = W/g;
a = sqrt(gamma*R*T);
u0 = Mach*a;
Q = .5*density*u0^2;
%gamma might be wrong. check later
 
%CG@25%MAC
CDu = Mach*CDM;
CLu = Mach*CLM;
 
%Z-Force Derivatives;
%nu = 0; %efficiency factor of h-tail
%CZadot = -2*nu*CLat*VH; 
CZalphadot = 0;
CZq = 0; %=-2*nu*CLat*VH
CZdeltae = -CLdeltae;
Cmu = 0; %assuming compressibility effect is zero
lambda = 37.5*pi/180; %found onlnie
Cyp = CL0*(tan(lambda)*(AR + cos(lambda))/(AR + 4*cos(lambda)));
Cyr = 0;
Cyda = 0;
%longitudinal
Xu = -(CDu + 2*CD0)*Q*S/(m*u0);
Xw = -(CDalpha - CL0)*Q*S/(m*u0);
Zu = -(CLu + 2*CL0)*Q*S/(m*u0);
Zw = -(CLa + CD0)*Q*S/(m*u0);
 
Zwdot = -(CZalphadot*c*Q*S/(2*u0*u0*m));
Zalpha = u0*Zw;
Zalphadot = u0*Zwdot;
Zq = -CZq*c*Q*S/(2*u0*m);
Zdeltae = -CZdeltae*Q*S/m;
 
Mu = Cmu*(Q*S*c)/(u0*Iy);
Mw = CMalpha*(Q*S*c)/(u0*Iy);
Mwdot = CMalphadot*c*Q*S*c/(2*u0*u0*Iy);
Malpha = u0*Mw;
Malphadot = u0*Mwdot;
Mq = CMq*c*Q*S*c/(2*u0*Iy);
Mdeltae = CMdeltae*Q*S*c/Iy;
 
%Lateral
Ybeta = Q*S*CyB/m;
Yp = Q*S*b*Cyp/(2*m*u0);
Yr = Q*S*b*Cyr/(2*m*u0);
Yda = Q*S*Cyda/m;
 
Nda = Q*S*b*Cnda/Iz;
Lda = Q*S*b*Clda/Ix;
Nbeta = Q*S*b*CnB/Iz;
Np = Q*S*(b^2)*Cnp/(2*Ix*u0);
Nr = Q*S*(b^2)*Cnr/(2*Ix*u0);
Ydr = Q*S*Cydr/m;
Ndr = Q*S*b*Cndr/Iz;
Ldr = Q*S*b*Cldr/Ix;
Lbeta = Q*S*b*ClB/Ix;
Lp = Q*S*(b^2)*Clp/(2*Ix*u0);
Lr = Q*S*(b^2)*Clr/(2*Ix*u0);
 
theta0 = 0; % elevation angle of stab. axis = flight path angle
 
prompt = ('(1)Longitudinal (2)Lateral: ');
    option2 = input(prompt);
 
    switch option2
        case 1        
 
        A = [Xu     Xw     0       -g*cos(theta0);
            Zu     Zw     u0      -g*sin(theta0);
            (Mu + Mwdot*Zu) (Mw + Mwdot*Zw) (Mq + Mwdot*u0) 0;
            0      0      1       0]; 
        B = [0;
            Zdeltae;
            (Mdeltae + Mwdot*Zdeltae);
            0 ;];
        C = eye(4);
        D = zeros(4,1);
 
% Problem 2
Xi = -(Mq + Malphadot)/(2*sqrt(-Malpha));
wn = sqrt(-Malpha);
phaseangle = atan(-sqrt(1-Xi^2)/(-Xi));
 
P = 15.165;
t = 0:0.01:4*P; 
deltaAlpha = 1*(1+exp((-t*Xi*wn)/sqrt(1-Xi^2)).*sin(sqrt(1-Xi^2)*wn*t+phaseangle)); %using eq. 4.45
 
deltaP0to1 = 0:0.05:1.6;
P1 = P*ones(length(deltaP0to1));
P2 = 2*P*ones(length(deltaP0to1));
P3 = 3*P*ones(length(deltaP0to1));
P4 = 4*P*ones(length(deltaP0to1));
 
figure(1)
plot(t, deltaAlpha, '-r', P1, deltaP0to1, '-g', P2, deltaP0to1, '-b', P3, deltaP0to1, '-c', P3, deltaP0to1, '-y')
title('deltaAlpha vs Time')
xlabel('time t (s)')
ylabel('delta Alpha (degree)')
legend('deltaAlpha','1 Period', '2 Period', '3 Period', '4 Period')
 
        case 2
            A = [(Ybeta/u0) (Yp/u0) -(1-(Yr/u0))    (g*cos(theta0)/u0)  ;
                Lbeta      Lp      Lp              0                   ;
                Nbeta      Np      Nr              0                   ;
                0          1       0               0                   ];
            B = [0     (Ydr/u0);
                Lda    Ldr;
                Nda    Ndr;
                0      0];
            C = eye(4);
            D = zeros(4,2)
    end
 
% Problem 3 ====================
if (option2 ==1)
    %Eigenvalues and Eigenvectors
    [VecE,Lam] = eig(A);
    fprintf('Eigenvalues of A matrix:\n')
    diag(Lam)
 
    %phugoid approx
    fprintf('Phugoid Approximation \n');
    wnp = sqrt(-Zu*g/u0);
    xip = (-Xu/(2*wnp));
    lambdap = -xip*wnp + 1j*wnp*sqrt(1-xip^2);
    Period = 2*pi/imag(lambdap);
    timehalf = 0.69/real(lambdap);
    Nhalf = 0.110*imag(lambdap)/real(lambdap);
 
    fprintf('Natural frequency: %9.2f (Hz)\n', wnp)
    fprintf('Damping ratio: %9.2f (nondim.)\n', xip)
    fprintf('Period: %9.2f (s)\n', Period)
    fprintf('Time of half: %9.2f (s)\n', timehalf)
    fprintf('Cycle of half: %9.2f\n', Nhalf)
    fprintf('\n')
 
    %Short period approx
    fprintf('Short Period Approximation \n');
    wnsp = sqrt((Zalpha*Mq/u0)-Malpha);
    xisp = (Mq + Malphadot + (Zalpha/u0))/(2*wnsp);
    lambdasp = -xisp*wnsp + 1j*wnsp*sqrt(1-xisp^2);
    Period = 2*pi/imag(lambdasp);
    timehalf = 0.69/real(lambdasp);
    Nhalf = 0.110*imag(lambdasp)/real(lambdasp);
 
    fprintf('Natural frequency: %9.2f (Hz)\n', wnsp)
    fprintf('Damping ratio: %9.2f (nondim.)\n', xisp)
    fprintf('Period: %9.2f (s)\n', Period)
    fprintf('Time of half: %9.2f (s)\n', timehalf)
    fprintf('Cycle of half: %9.2f\n', Nhalf)
    fprintf('\n')
 
else
    fprintf("Lateral Motion Approximations: \n")
    %Spiral approx
    fprintf('Spiral Approximation \n');
    lambdaspiral = (Lbeta*Nr-Lr*Nbeta)/Lbeta;
    Period = 2*pi/imag(lambdaspiral);
    timehalf = 0.69/real(lambdaspiral);
    Nhalf = 0.110*imag(lambdaspiral)/real(lambdaspiral);
 
    fprintf('Period: %9.2f (s)\n', Period)
    fprintf('Time of half: %9.2f (s)\n', timehalf)
    fprintf('Cycle of half: %9.2f\n', Nhalf)
    fprintf('\n')
 
    %Roll approx
    fprintf('Roll Approximation \n');
    lambdaroll = Lp;
    Period = 2*pi/imag(lambdaroll);
    timehalf = 0.69/real(lambdaroll);
    Nhalf = 0.110*imag(lambdaroll)/real(lambdaroll);
 
    fprintf('Period: %9.2f (s)\n', Period)
    fprintf('Time of half: %9.2f (s)\n', timehalf)
    fprintf('Cycle of half: %9.2f\n', Nhalf)
    fprintf('\n')
 
%Dutch Roll approx
    fprintf('Dutch Roll Approximation \n');
    wndr = sqrt((Ybeta*Nr-Nbeta*Yr+u0*Nbeta)/u0);
    xidr = -(Ybeta+u0*Nr)/(2*wndr*u0);
    lambdadr = -xidr*wndr + 1j*wndr*sqrt(1-xidr^2);
    Period = 2*pi/imag(lambdadr);
    timehalf = 0.69/real(lambdadr);
    Nhalf = 0.110*imag(lambdadr)/real(lambdadr);
 
    fprintf('Natural frequency: %9.2f (Hz)\n', wndr)
    fprintf('Damping ratio: %9.2f (nondim.)\n', xidr)
    fprintf('Period: %9.2f (s)\n', Period)
    fprintf('Time of half: %9.2f (s)\n', timehalf)
    fprintf('Cycle of half: %9.2f\n', Nhalf)
    fprintf('\n')
end
 
 
%% Assignment 3 - Problem 3a & b
%1 Degree perturbation: Pilot Input Command
 syslong = ss(A,B,C,D);
 tflong  = tf(syslong);
 
 figure(3)
 step(tflong);
 
 
 %% Trying this stack thingy
 
 
 
 
 
%% Assignment 4
%Problem 1 - Pole and Zero Plot of aircraft pitch to elevator angle
s = tf('s')
G= tflong(4)
%G = (-1.158*s^2 - 0.3542*s - 0.003866)/(s^4+0.7501*s^3+0.935*s^2+0.009451*s + 0.004186);
 
figure(4)
ylim([-1.0 1.0]);
xlim([-1 0]);
pzplot(G)
 
 
%% Problem 2 - root locus plot for pitch altitude controller
figure(5)
ss1 = tf(G)
rlocus(-ss1); ylim([-3.5 3.5])
 
%%
sisotool(tflong(4))
 
%% PID System
condition = 0;
while( condition < length(tflong))
    condition = condition + 1;
    G = tflong(condition);
    
Kp = 1.0;
Ki = 0;
Kd = 0;
Tf = 0;
 
c_pid = pid(Kp,Ki,Kd, Tf);
JG = c_pid*G;
ss1_pid = feedback(-0.5*JG,1);
 
figure(6) %step response of the closed loop system
 
t=0:0.01:20;
step(ss1_pid,t);
title('P - Feedback')
 
figure(7); %root locus
rlocus(-JG, [0:0.1:10]);
 
%plot the pole with gain of -0.5
r = rlocus(JG, [-0.5]);
ylim([-2.5 2.5]);
xlim([-1.4 1.4]);
hold on;
plot(r,'d');
hold off;
 
Kp = 1.0;
Ki = 1.0;
Kd = 0;
Tf = 0;
 
c_pid = pid(Kp,Ki,Kd, Tf);
JG = c_pid*G;
ss1_pid = feedback(-0.5*JG,1);
 
figure(8) %step response of the closed loop system
t=0:0.01:20;
step(ss1_pid,t);
title('PI - Feedback')
 
figure(9); %root locus
rlocus(-JG, [0:0.1:10]);
 
%plot the pole with gain of -0.5
r = rlocus(JG, [-0.5]);
ylim([-2.5 2.5]);
xlim([-1.4 1.4]);
hold on;
plot(r,'d');
hold off;
Kp = 1.0;
Ki = 1.0;
Kd = 1.0;
Tf = 0;
 
c_pid = pid(Kp,Ki,Kd, Tf);
JG = c_pid*G;
ss1_pid = feedback(-0.5*JG,1);
 
figure(10) %step response of the closed loop system
t=0:0.01:20;
step(ss1_pid,t);
title('PID - Feedback')
 
figure(11); %root locus
rlocus(-JG, [0:0.1:10]);
 
%plot the pole with gain of -0.5
r = rlocus(JG, [-0.5]);
ylim([-2.5 2.5]);
xlim([-1.4 1.4]);
hold on;
plot(r,'d');
hold off;
 
pause
end
