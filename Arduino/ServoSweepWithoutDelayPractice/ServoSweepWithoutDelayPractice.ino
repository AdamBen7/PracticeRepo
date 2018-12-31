#include <Servo.h>

class Sweeper
{
  Servo servo;
  int pos;
  int increment;
  int updateInterval;
  unsigned long lastUpdate;

public:
  Sweeper(int interval)
  {
    updateInterval = interval;
    increment = 1;
  }

  void Attach(int pin)
  {
    servo.attach(pin);
  }
  
  void Detach()
  {
    servo.detach();
  }
  
  void Update()
  {
    if((millis() - lastUpdate) > updateInterval)  // time to update
    {
      lastUpdate = millis();
      pos += increment;
      servo.write(pos);
      if ((pos >= 180) || (pos <= 0)) // end of sweep
      {
        increment = -increment; // reverse direction
      }
    }
  }
};
 

class Flasher
{
  int ledPin;
  long OnTime;
  long OffTime;

  //These maintain the current state
  int ledState;
  unsigned long previousMillis;

  //Constructor creats a Flasher and initializes the member variables and state
  public:
  Flasher(int pin, long on, long off)
  {
    ledPin = pin;
    pinMode(ledPin, OUTPUT);

    OnTime = on;
    OffTime = off;

    ledState = LOW;
    previousMillis = 0;
  }

  void Update()
  {
    //check to see if it's time to change the state of the LED
    unsigned long currentMillis = millis();

    if((ledState == HIGH) && (currentMillis - previousMillis >=OffTime))
    {
      ledState = LOW; //turn it off
      previousMillis = currentMillis; //remember the time
      digitalWrite(ledPin, ledState);
    }
    else if ((ledState == LOW) && (currentMillis - previousMillis >= OffTime))
    {
      ledState = HIGH; //turn it on
      previousMillis = currentMillis;
      digitalWrite(ledPin, ledState);
    }
  }
};


Flasher led1(13, 120,240);
Sweeper sweeper1(9);

void setup(){
  sweeper1.Attach(9);
}

void loop(){ 
  sweeper1.Update();
  led1.Update();
}
