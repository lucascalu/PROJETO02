String a;

void setup() {
  pinMode(13, OUTPUT);

Serial.begin(9600); // opens serial port, sets data rate to 9600 bps

}

void loop() {

while(Serial.available()) {

a= Serial.readString();// read the incoming data as string


  
  if(a=="on"){
    
   digitalWrite(13, HIGH); 
  }
  
  if(a=="off"){
    
   digitalWrite(13, LOW); 
  }
  

}

}
