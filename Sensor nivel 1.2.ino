#include <LiquidCrystal.h>
LiquidCrystal LCD (10, 9, 5, 4, 3, 2);
int BotonON;
int BotonOFF;
int ABC;


void setup() {
  // put your setup code here, to run once:
  Serial.begin (9600);
  pinMode(13, OUTPUT);//Trigger
  pinMode(11, INPUT);//Echo
  LCD.begin(16,2);
  pinMode(7, OUTPUT);//7 de tanque vacio
  pinMode(5, OUTPUT); // 7 de tanque lleno
  pinMode(6, OUTPUT);// 6
  pinMode(12, OUTPUT); //Bomba 1 Llenado
  pinMode(10, OUTPUT); //Bomba 2 Vaciado
  pinMode(9, INPUT);  //Boton START
  pinMode(8, INPUT);  //Boton OFF
}

void loop() {
  // put your main code here, to run repeatedly:
  long duration, distanceCm;
  BotonON = digitalRead(9);
  BotonOFF = digitalRead(8);
  ABC =1;
  //long microsecondsToCentimeters(long microseconds) ;
  LCD.print("Presiona un boton");
  Serial.println("Presiona un boton");
  for(int i=0; i<5; i++){
    if(BotonON == HIGH)
    {
      ABC = 0;
    }
    else
    {
      ABC = 1;
    }
  }
  Serial.println(ABC);
  delay(3000);
 while(ABC==0) {
   delay(1000);
    digitalWrite(13, LOW);
    delayMicroseconds(2);
    digitalWrite(13, HIGH);
    delayMicroseconds(10);
    digitalWrite(13, LOW);
    duration = pulseIn(11, HIGH);
    distanceCm = (duration/29)/2;
    //distanceCm= microsecondsToCentimeters(duration);
    LCD.print("Presiona un boton");
    Serial.println("Presiona un boton");
    if(distanceCm >=5)
    {
      digitalWrite(10, LOW);
      digitalWrite(7, HIGH);
      digitalWrite(6, HIGH);
      LCD.println("Nivel bajo de agua");
      Serial.println("Nivel bajo de agua");
      delay(100);
      LCD.println("Iniciando proceso de llenado");
      Serial.println("Iniciando proceso de llenado");
      digitalWrite(12, HIGH);
      digitalWrite(6, LOW);
    }
    else if(distanceCm <= 3)
    {
      digitalWrite(12, LOW);
      LCD.println("Nivel alto de agua");
      Serial.println("Nivel alto de agua");
      digitalWrite(5,LOW);
      digitalWrite(6, HIGH);
      digitalWrite(7, HIGH);
      delay(100);
      digitalWrite(6, LOW);
      digitalWrite(7, LOW);
      digitalWrite(5,HIGH);
      delay(100);
      digitalWrite(5,LOW);
      digitalWrite(6, HIGH);
      digitalWrite(7, HIGH);
      delay(100);
      digitalWrite(6, LOW);
      digitalWrite(7, LOW);
      digitalWrite(5,HIGH);
      delay(100);
      digitalWrite(5,LOW);
      digitalWrite(6, HIGH);
      digitalWrite(7, HIGH);
      delay(100);
      digitalWrite(6, LOW);
      digitalWrite(7, LOW);
      digitalWrite(5,HIGH);
      LCD.println("Iniciando proceso de Vaciado");
      Serial.println("Iniciando proceso de Vaciado");
      digitalWrite(10,HIGH);

    }
    else
    {
      digitalWrite(10, LOW);
      digitalWrite(12, LOW);
      digitalWrite(6, LOW);
      digitalWrite(7, LOW);
      digitalWrite(5, HIGH); 
      LCD.println("Nivel apropiado de agua");
      Serial.println("Nivel apropiado de agua");
    }

   } 
  LCD.println("APAGANDO");
  Serial.println("APAGANDO");
  delay(500);
  LCD.println("");
  Serial.println("");
}