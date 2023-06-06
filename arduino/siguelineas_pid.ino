// asigna nombres a los pines de la BATS
#define NEOPX 2
#define BOTON1 3
#define BOTON2 4
#define BIN2 6
#define BIN1 7
#define AIN1 8
#define AIN2 9
#define LED_V 10 //revisar en funcion de como se soldaron los LEDs
#define LED_A 11
#define LED_R 12
#define BUZZER 13
#define LDR A0
#define POT1 A1
#define POT2 A2

#define vel 50
#define paso 12
#define kp .01
#define ki 0.1

int giro = 0;
int i = 0;
int p = 0;

// esta parte se ejecutara solo una vez al principio
void setup() {
  Serial.begin(9600);
}

// esta parte se repetira en bucle para siempre
void loop()
{
  p = analogRead(A4) - analogRead(A5);
  i += p;
  if (i*p < 0) i=0;
  giro = kp*p + ki*i;
  Serial.println(giro);
  drive(vel-giro, vel+giro, paso);
}

//función de movimiento de motores
//velocidad de las ruedas izquierda y derecha, positivo hacia delante, tiempo en milisegundos
void drive(int L, int R, int t) 
{
//iniciar el modo de los pines para los motores
  pinMode(AIN1,OUTPUT);
  pinMode(AIN2,OUTPUT);
  pinMode(BIN1,OUTPUT);
  pinMode(BIN2,OUTPUT);

// evitar valores no válidos para el PWM
  L=constrain(L,-255,255);
  R=constrain(R,-255,255);

// poner valores a los pines
  digitalWrite(AIN1, L<0);
  analogWrite(AIN2, L+255*(L<0));
  digitalWrite(BIN1, R<0);
  analogWrite(BIN2, R+255*(R<0));

  delay(t);
}

//funcion de lectura de los sensores de ultrasonidos
long sonar(int trig)
{
  pinMode(trig, OUTPUT);
  digitalWrite(trig,LOW); // trigger envia un pulso ultrasónico
  delayMicroseconds(5);
  digitalWrite(trig, HIGH);
  delayMicroseconds(10);
  pinMode(trig, INPUT);
  unsigned long tiempo=pulseIn(trig, HIGH);    // echo espera a recibir la respuesta
  unsigned long distancia= int(0.17*tiempo);  // fórmula para calcular la distancia
  return distancia;
}
