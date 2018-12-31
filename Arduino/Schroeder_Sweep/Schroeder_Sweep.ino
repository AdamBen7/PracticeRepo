// Adam Benabbou
// AEM 617
// April 18, 2018
//Project 2: #2 Schroeder Sweep 
//Worked on Teensy 3.2 Microcontroller with EMAX ES08AH Servo. Compile with 96MHz CPU Speed


void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  analogWriteResolution(16); //Using 16 bits. 2^16 = 65536 
  analogWriteFrequency(3,50); // 50Hz on pin 3
}

double N = 40.0; //Total number of Cosine functions
double T = 175; // Period
double curr_time, disp, disp_actual;
double t = 0; 

void loop() {
  // put your main code here, to run repeatedly:
  curr_time = millis();
  t = curr_time;        //might want to experiment more later, else I'd set t directly to millis()
  for (int k = 1; k <= N; k++)
  {
    disp = sqrt(1/(2*N))*cos((2*PI*k*t/T) - (PI*k*k/N));
    disp_actual +=disp;
  }
  Serial.println(disp_actual);
  Serial.print(" ");
  analogWrite(3,map(disp_actual)); //sends the magical signal to the poor servo

  disp_actual = 0;
  delay(45); //might want to look into this value further...

}

// the magical mapping function
int map(float value){
  return 65535*0.05 + value*(65535*0.05);
}
