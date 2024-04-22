int trigger = 12;  // Define the trigger pin for the ultrasonic sensor
int echo = 13;     // Define the echo pin for the ultrasonic sensor
int led = 8;       // Define the pin for the LED
long duration = 0; // Variable to store the duration of the sound wave travel
int cm = 0;        // Variable to store the distance in centimeters
int inch = 0;      // Variable to store the distance in inches

void setup() {
  Serial.begin(9600);  // Initialize serial communication at 9600 baud rate
  pinMode(trigger, OUTPUT); // Set the trigger pin as an output
  pinMode(echo, INPUT);     // Set the echo pin as an input
  pinMode(led, OUTPUT);     // Set the LED pin as an output
}

void loop() {
  digitalWrite(trigger, LOW);   // Set the trigger pin low to ensure a clean pulse
  delayMicroseconds(2);         // Wait for 2 microseconds
  digitalWrite(trigger, HIGH);  // Generate a 10 microsecond pulse
  delayMicroseconds(10);        
  digitalWrite(trigger, LOW);
  
  duration = pulseIn(echo, HIGH); // Measure the duration of the pulse received on the echo pin
  
  cm = duration * 0.034 / 2; // Calculate distance in centimeters using the speed of sound (approx. 0.034 cm per microsecond)
  inch = duration * 0.0133 / 2; // Calculate distance in inches (approx. 0.0133 inches per microsecond)

  if (inch < 50) { // If the distance is less than 50 inches, turn on the LED
    digitalWrite(led, HIGH);
  } else {
    digitalWrite(led, LOW); // Otherwise, turn off the LED
  }

  if (inch < 100) { // If the distance is less than 100 inches, print the distance in both inches and centimeters
    Serial.print("Inches: ");
    Serial.println(inch);
    Serial.print("Cm: ");
    Serial.println(cm);
  }

  delay(500); // Wait for 500 milliseconds before taking the next reading
}


____________________________________________________________________________________________________________________________


int trigger = 12;  
int echo = 13;  
int led = 8; 
long duration = 0; 
int cm = 0; 
int inch = 0; 

void setup() { 
Serial.begin(9600); 
pinMode(trigger, OUTPUT); 
pinMode(echo, INPUT); 
pinMode(led, OUTPUT); 
} 

void loop() { 
digitalWrite(trigger, LOW); 
digitalWrite(trigger, HIGH); 
digitalWrite(trigger, LOW); 
duration = pulseIn(echo, HIGH); 
cm = duration*0.034/2; 
inch = duration*0.0133/2; 
if (inch < 50){ 
digitalWrite(led, HIGH); 
} else { 
digitalWrite(led, LOW); 
} 
if (inch < 100 ) { 
Serial.print("Inches: "); 
Serial.println(inch); 
Serial.print("Cm: "); 
Serial.println(cm); 
} 

delay(500); 
} 