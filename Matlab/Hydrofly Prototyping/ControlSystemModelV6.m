%October 6 2018
%goals: height based PID?

clear;clc;
massw = 4.2; 
mass = 8.25 + massw;
massoriginal = mass;
area = pi*(.0032)^2;

period = 0.02; %2ms
g = -9.81; %gravity
rho = 997; %density of water
P = 5500000; %.5MPa
P2=P;
VolumeAirOrig = .5; %Volume of air originally...
VolumeAir2 = VolumeAirOrig;

velocity = 0; %final velocity
pipeheight = .5;
ue= sqrt(2*((P/rho)+g*pipeheight));
height = 0;
pheight =0; %potential height = height + height with velocity. unnecessary.

m_dotC = rho*area*ue;

dutyCycle = 1;
dt = .1;
finalTime = 5;
THtime = 0;
timer = 0;

valueofH = zeros(1,finalTime/dt);
valueofV = zeros(1,finalTime/dt);
valueofMw = zeros(1,finalTime/dt);

n = 1; %start with accel. 2:neutral, 3: deccel
count =0;

%PID controls
KP = 1.0; KI = 2.0; KD = 2; prevError=0;
targetVel = 3; integral =0; derivative = 0;

velocity =0;
for time = 0:dt:finalTime

    error = targetVel - velocity;
    integral = integral + error*dt;
    derivative = (error - prevError)*dt;
    prevError = error;
    outputdv = KP*error + KI*integral + KD*derivative;
    
    switch n
        case 1        
            if pheight >= 2
                n=2;
                targetVel=0;
            end
            if outputdv < 0
                dutyCycle = 0;
                %n=2;
            else
                masswpp = mass*exp((g*dt/ue) - (outputdv/ue)); %masswp = massw*((exp(outputdv)-exp(g*dt)).^ue);
                m_dot = (mass - masswpp)/dt;
                dutyCycle=(m_dot/m_dotC);
                if dutyCycle > 1
                    dutyCycle = 1;
                end
            end
            disp('stop');
            
        case 2
            timer = timer + dt;
            if outputdv < 0
                dutyCycle = 0;
            else
                masswpp = mass*exp((g*dt/ue) - (outputdv/ue)); %masswp = massw*((exp(outputdv)-exp(g*dt)).^ue);
                m_dot = (mass - masswpp)/dt;
                dutyCycle=(m_dot/m_dotC);
                if dutyCycle > 1
                    dutyCycle = 1;
                end
            end
            if timer >=3
                n=3;
                targetVel = -1.0;
            end
            
        case 3
            if outputdv < 0
                dutyCycle = 0;
            else
                masswpp = mass*exp((g*dt/ue) - (outputdv/ue)); %masswp = massw*((exp(outputdv)-exp(g*dt)).^ue);
                m_dot = (mass - masswpp)/dt;
                dutyCycle=(m_dot/m_dotC);
                if dutyCycle > 1
                    dutyCycle = 1;
                end
            end
            if height<=0
                disp('finished')
                break
            end
        otherwise
    end
    if massw<=0 %out of water condition
        m_dotC=0;
        disp('out of water. dropping...')
    end
        
    m_dot = dutyCycle*m_dotC;
    masswp = mass - m_dot*dt;
    
    massw = massw - m_dot*dt; %state
    %VolumeAir2=VolumeAir2 + (m_dot*dt/rho);
    %P2 = P*VolumeAirOrig/VolumeAir2;
    
    dv = g*dt + ue*log(mass/masswp);
    velocity = velocity + dv;
    height = height + velocity*dt; 
    if height < 0 %ground condition
        height = 0;
        velocity=0; 
    end
    mass = masswp;      
    count = count +1;
    pheight = height + (velocity+dv)*dt;

    
    valueofH(1,count) = height;
    valueofV(1,count) = velocity;
    valueofMw(1,count)=massw;
end


figure(1);
plot(valueofH); 
xlabel('Time (0.1s)')
ylabel('Height (m)')
%saveas(gcf, 'HeightvTime.png')

figure(2);
plot(valueofV); 
xlabel('Time (0.1s)')
ylabel('Velocity (m/s)')
%saveas(gcf, 'VelocityvTime.png')

figure(3);
plot(valueofMw); 
xlabel('Time (0.1s)')
ylabel('Propellant (kg)')
%saveas(gcf, 'WatervTime.png')
