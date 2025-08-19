#include <Wire.h>
#include <LiquidCrystal.h>
//LiquidCrystal lcd (1, 2, 3, 4, 8, 9);
//int BotonON = 8;
//int BotonOFF = 9;
#define DIST_TOPE 12 // nivel maximo, medida con el tanque vacio en cm
const int ABC;
const int TriggerPin = 13;
const int EchoPin = 11;
const int BombaLlenado = 12;
const int BombaVaciado = 10;
const int LedLleno = 7;
const int LedVacio = 5;
const int Buzzer = 6;
long duration=0;
long duration_2 = 0;
float distanceCm=0;
int nivel_1 = 0;
float distance=0;
int nivel_2 = 0;
float distancia =0;
float distanciaPromedio = 0;
const int numReadings = 20;
int encender = 0;
int apagar = 0;
byte dato=0x00;
byte lectura;

//Añadí más entradas digitales
void Analog_Digital(){
  lectura=digitalRead(A0); 
  if(lectura==HIGH){
    dato=dato|B0000000;
    }
  else{
    dato=dato|0x00;
  }
lectura=digitalRead(A1); 
  if(lectura==HIGH){
    dato=dato|B0000010;
    }
  else{
    dato=dato|0x00;
  }
lectura=digitalRead(A2); 
  if(lectura==HIGH){
    dato=dato|B00000100;
    }
  else{
    dato=dato|0x00;
  }
lectura=digitalRead(A3); 
  if(lectura==HIGH){
    dato=dato|B00001000;
    }
  else{
    dato=dato|0x00;
  }
lectura=digitalRead(A4); 
  if(lectura==HIGH){
    dato=dato|B0001000;
    }
  else{
    dato=dato|0x00;
  }
lectura=digitalRead(A5); 
  if(lectura==HIGH){
    dato=dato|B00100000;
    }
  else{
    dato=dato|0x00;
  }
  PORTD=dato;
}

double readings[numReadings];      // the readings from the analog input
int readIndex = 0;              // the index of the current reading
double total = 0;                  // the running total
double average = 0;                // the average

double filtroProm(double entrada) {
  // subtract the last reading:
  total = total - readings[readIndex];
  // read from the sensor:
  readings[readIndex] = entrada;
  // add the reading to the total:
  total = total + readings[readIndex];
  // advance to the next position in the array:
  readIndex++;

  // if we're at the end of the array...
  if (readIndex >= numReadings) {
    // ...wrap around to the beginning:
    readIndex = 0;
  }

  // calculate the average:
  average = total / numReadings;
  return average;
}

float get_dist_1() {
  // Clears the TriggerPin
  digitalWrite(TriggerPin, LOW);
  delayMicroseconds(2);

  // Sets the TriggerPin on HIGH state for 10 micro seconds
  digitalWrite(TriggerPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(TriggerPin, LOW);

  // Reads the EchoPin, returns the sound wave travel time in microseconds
  duration = pulseIn(EchoPin, HIGH, 200000);//timeout de 200000 microsegundos que es 200ms

  // Calculating the distanceCm
  //distanceCm = (float)(duration * 0.03432 )/ 2;
  return (float)(duration * 0.03432 ) / 2;
}

int ultrasonic_fail = 0;//contador para determinar fallo del sensor ultrasonico

void get_level_1() {
  distanceCm = get_dist_1();
  Serial.print(distanceCm);
  if (distanceCm == 0)ultrasonic_fail++; //se incrementa el contador

  if (ultrasonic_fail == 5) { //si llega a 5 veces concecutivas con lecturas a cero es que algo anda mal con el sensor
    lcd.clear();
    lcd.print("Error de sensor");
    while (1) {
    }
  }

  if (distanceCm > 0) {//descarta errores del sensor

    ultrasonic_fail = 0; //se resetea el contador

    distanciaPromedio = filtroProm(distanceCm);

    Serial.print(distanceCm); Serial.print(" ; ");
    Serial.println(distanciaPromedio);

    nivel_1 = (distanceCm*100)/DIST_TOPE; 
    Serial.println(nivel_1);
    lcd.setCursor(0, 0);
    lcd.print("Nivel: ");
    lcd.setCursor(8, 0);
    lcd.print(nivel_1 + "%");
    lcd.display();
  }
}

float get_dist_2() {
  // Clears the TriggerPin
  digitalWrite(4, LOW);
  delayMicroseconds(2);
  // Sets the TriggerPin on HIGH state for 10 micro seconds
  digitalWrite(4, HIGH);
  delayMicroseconds(10);
  digitalWrite(4, LOW);

  // Reads the EchoPin, returns the sound wave travel time in microseconds
  duration_2 = pulseIn(19, HIGH, 200000);//timeout de 200000 microsegundos que es 200ms

  // Calculating the distanceCm
  //distanceCm = (float)(duration * 0.03432 )/ 2;
  return (float)(duration_2 * 0.03432 ) / 2;
}

int ultrasonic_fail_2 = 0;//contador para determinar fallo del sensor ultrasonico

void get_level_2() {
  distance = get_dist_2();
  Serial.print(distance);
  if (distance == 0)ultrasonic_fail_2++; //se incrementa el contador

  if (ultrasonic_fail_2 == 5) { //si llega a 5 veces concecutivas con lecturas a cero es que algo anda mal con el sensor
    lcd.clear();
    lcd.print("Error de sensor");
    while (1) {
    }
  }

  if (distance > 0) {//descarta errores del sensor

    ultrasonic_fail = 0; //se resetea el contador
    Serial.print(distance); Serial.print(" ; ");
    nivel_2 = (distance*100)/DIST_TOPE; 
    Serial.println(nivel_2);
  }
}

void Llenar(){
  Serial.println((nivel_1 +" // "+ nivel_2));
  digitalWrite(Buzzer, HIGH);
  digitalWrite(LedLleno,HIGH);
  lcd.setCursor(12,0);
  lcd.print("BAJO");
  lcd.setCursor(0,1);
  lcd.print("    Llenando    ");
  Serial.println("Iniciando proceso de llenado");
  digitalWrite(BombaLlenado, HIGH);
  //digitalWrite(Buzzer, LOW);
}
void Apagar(){
  digitalWrite(BombaLlenado, LOW);
  digitalWrite(Buzzer, LOW);
  digitalWrite(BombaVaciado, LOW);
  digitalWrite(LedVacio, LOW);
  digitalWrite(LedLleno, HIGH); 
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("Nivel: ");
  lcd.setCursor(8, 0);
  lcd.print(nivel_1 + "%");
  lcd.display();
  lcd.setCursor(0,1);
  lcd.print("  Nivel optimo  ");
}

void Vaciar(){
  digitalWrite(Buzzer, HIGH);
  digitalWrite(LedVacio,HIGH);
  lcd.setCursor(12,0);
  lcd.print("ALTO");
  lcd.setCursor(0,1);
  lcd.print("Nivel 2 Bajo");
  lcd.setCursor(0,1);
  lcd.print("Llenando tanque2");
  Serial.println("Iniciando proceso de llenado");
  digitalWrite(BombaVaciado, HIGH);
  digitalWrite(Buzzer, LOW);
}

void setup() {
  // put your setup code here, to run once:
  //DDRD=B11111111;
  Serial.begin (9600);
  lcd.begin(16,2);
  pinMode(TriggerPin, OUTPUT);//Trigger
  pinMode(EchoPin, INPUT);//Echo
  pinMode(LedLleno, OUTPUT);//Bomba de tanque vaciado
  pinMode(LedVacio, OUTPUT); // Bomba de tanque llenado
  pinMode(Buzzer, OUTPUT);// Buzzer
  pinMode(BombaLlenado, OUTPUT); //Bomba 1 Llenado
  pinMode(BombaVaciado, OUTPUT); //Bomba 2 Vaciado
  pinMode(8, OUTPUT);  //Boton START
  pinMode(9, OUTPUT);  //Boton OFF
  digitalWrite(4, OUTPUT);
  digitalWrite(3, INPUT);
  digitalWrite(BombaLlenado, LOW);
  digitalWrite(BombaVaciado, LOW);
 /* pinMode(A0, OUTPUT); // configura ‘14’ como salida 
  pinMode(A1, OUTPUT); // configura ‘15’ como salida 
  pinMode(A2, OUTPUT); // configura ‘16’ como salida 
  pinMode(A3, OUTPUT); // configura ‘17’ como salida 
  pinMode(A4, OUTPUT);// trigger sensor 2
  pinMode(A5, INPUT);// Echo sensor 2*/
}

void loop() {
  // put your main code here, to run repeatedly:
  //Analog_Digital();
  lcd.setCursor(0,0);
  lcd.print("Elige tu opcion");
  encender = digitalRead(8);
  apagar = digitalRead(9);
 //if(encender == HIGH){
    get_level_1();
    get_level_2();
    if(nivel_1<=30){
      delay(100);
      Llenar();
      Serial.println((nivel_1 +" // "+ nivel_2));
    }
    else if(nivel_1 == 90){
      Apagar();
      Serial.println((nivel_1));
      delay(1000);
      Vaciar();
     // if(nivel_2 <70){
      
      //Serial.println((nivel_1 +" // "+ nivel_2));
      //}
    }
    else if (apagar == HIGH){
      Apagar();
    }
  // }
}