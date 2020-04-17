#include <TimerOne.h>
#include "TM1637.h"


#define CLK 8//pins definitions for TM1637 and can be changed to other ports    
#define DIO 9
TM1637 tm1637(CLK,DIO);

void setup() {
  // put your setup code here, to run once:
tm1637.set();
  tm1637.init();

}

void loop() {
  // put your main code here, to run repeatedly:
int8_t NumTab[] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15};//0~9,A,b,C,d,E,F
for(unsigned int i=0; i<= sizeof(NumTab);i++)
{tm1637.display (0,NumTab[i]);
delay(1000);
tm1637.display (1,NumTab[i+1]);
delay(1000);
tm1637.display (2,NumTab[i+2]);
delay(1000);
tm1637.display (3,NumTab[i+3]);
delay(1000);
if(i == sizeof(NumTab)) i = 0;
}}
