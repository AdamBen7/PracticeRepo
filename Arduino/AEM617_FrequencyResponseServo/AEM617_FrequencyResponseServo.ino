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

double N = 20.0; //Total number of Cosine functions
double T = 175; // Period
double curr_time, disp, disp_actual;
double t = 0; 
double prev = 0;

void loop() {
  // put your main code here, to run repeatedly:
  disp_actual = 0;
  Serial.println(disp_actual);
  analogWrite(3,map(disp_actual)); //sends the magical signal to the poor servo
  disp_actual = prev + 10;
  delay(500);
  
  for (int k = 1; k <= 4; k++)
  {
  Serial.println(disp_actual);
  Serial.print(" ");
  analogWrite(3,map(disp_actual)); //sends the magical signal to the poor servo
  delay(500); //might want to look into this value further...
  prev = disp_actual;
  disp_actual = -disp_actual;
  analogWrite(3,map(disp_actual)); //sends the magical signal to the poor servo
  delay(500); //might want to look into this value further...
  Serial.println(disp_actual);
  disp_actual = -disp_actual;
    if ((prev == 80) && (k==4)){
      prev = 10;
      delay(5000);
    }
  }


}

// the magical mapping function
int map(float value){
  return 65535*0.05 + ((value/180))*(65535*0.05);
}
