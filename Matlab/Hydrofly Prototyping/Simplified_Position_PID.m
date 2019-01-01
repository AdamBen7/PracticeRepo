dt = .01; finalTime = 10;
height = 0;
velocity=0;
error = 0;
targetH = 2;

KP = .1; KI = .00; KD = 0.0; prevError=0; integral =0; derivative = 0;

valueofH = zeros(1,finalTime/dt);
count =0;
for time = 1:dt:finalTime
    error = targetH- height;
    integral = integral + error*dt;
    derivative = (error - prevError)*dt;
    prevError = error;
    outputHeight = KP*error + KI*integral + KD*derivative;
    
    dh = outputHeight;
    accel = 2*(dh - velocity*dt)/(dt.^2); %dh = velocity*dt + 0.5*accel*dt.^2;
    if accel >= 5
        accel = 5;
    end
    
    velocity = velocity + accel*dt;
    height = height + velocity*dt + 0.5*accel*dt.^2;
    
    count= count+1;
    valueofH(1,count) = height;
end
plot(valueofH);

