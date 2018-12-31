#include <mcp_can.h>
#include <SPI.h>

const int SPI_CS_PIN = 9;
MCP_CAN CAN(SPI_CS_PIN); 

int count = 0;
int motor1thrust = 0;
int motor2thrust = 0;
int motor3thrust = 0;
int motor4thrust = 0; 
int stmp[4] = {motor1thrust, motor2thrust, motor3thrust, motor4thrust}; 

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);

  while(CAN_OK != CAN.begin(CAN_500KBPS))
  {
      Serial.println("CAN BUS System init fail");
      Serial.println("Init CAN BUS System Again");
      delay(100);
  }
  Serial.println("CAN BUS System init ok!");
}

void loop() {
  //This is for visualizing what's happening in the sending 
  //I would wait for data from specific address and if ID matches, use data
  Serial.println("In Loop");
  count += 1;
  if ((count < 20) && (count > 10)){
    motor1thrust +=5; 
    motor2thrust +=5;
    motor3thrust += 5;
    motor4thrust += 6;
  }else{
    motor1thrust +=1; 
    motor2thrust +=1;
    motor3thrust += 1;
    motor4thrust += 1;
  }
  CAN.sendMsgBuf(0x70, 0, 8, stmp);
  Serial.println(count, '\t', stmp);  
  // put your main code here, to run repeatedly:

}
