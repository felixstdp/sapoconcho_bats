// asigna nombres a los pines de la BATS
#define NEOPX 2
#define BOTON1 3
#define BOTON2 4
#define LED_V 10 //revisar en funcion de como se soldaron los LEDs
#define LED_A 11
#define LED_R 12
#define BUZZER 13
#define LDR A0
#define POT1 A1
#define POT2 A2

int status=0;

// esta parte se ejecutara solo una vez al principio
void setup()
{
  pinMode(BOTON1,INPUT);
  pinMode(BOTON2,INPUT);
  pinMode(LED_V, OUTPUT);
  pinMode(LED_A, OUTPUT);
  pinMode(LED_R, OUTPUT);

}

void loop()
{
  int boton1 = digitalRead(BOTON1);
  if (boton1) delay(200);
  int boton2 = digitalRead(BOTON2); 
  if (boton2) delay(200);

  status += boton1;
  status -= boton2;
  if (status > 2) status = 0;
  if (status < 0) status = 2;
  
  digitalWrite(LED_V, status == 0);
  digitalWrite(LED_A, status == 1);
  digitalWrite(LED_R, status == 2);

}
