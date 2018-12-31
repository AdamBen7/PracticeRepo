// Basic Moving Servo to Certain Angle
// Worked on Teensy 3.2 Microcontroller with EMAX ES08AH Servo. Compile with 96MHz CPU Speed

// Works! Trust me!
// Small chance of damaging servo ... so be ready to power down servo. 

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  analogWriteResolution(16);
  analogWriteFrequency(3,50); //50hz pwm on port 3
}

int time = 0;
float value = 0;
float angle;

int map(float value){
  return 65535*0.05 + value*(65535*0.05);
}


void loop() {
  // It's fun. Next step would be a joystick control... remote control?? 
  while(Serial.available()){
    byte incoming;
    incoming = Serial.read();
    if(incoming == 'w') value+=0.125; //don't go too far!!!
    if(incoming == 's') value-=0.125; //don't go too far!!!
    if(incoming == 'r') value=0;
    if(incoming == 'e') value=2; 
    if(incoming == 'q') value=1; 

    }
    angle = (value - 1) * 180; //converts to angle so you can see where servo is at in serial monitor

    Serial.print("Tester ");
    Serial.print(time);
    Serial.print(" Angle: ");
    Serial.print(angle);
    Serial.print(" ");
    Serial.print(map(value));
    Serial.println(" ");
    analogWrite(3,map(value));
    time++;
}
