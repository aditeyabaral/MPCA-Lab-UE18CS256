const int gasPin = A0;
void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);
}

void loop() {
 
  Serial.println(analogRead(gasPin));
  delay(2000);//print value every 1 sec
  // put your main code here, to run repeatedly:

}
