#define wootPin 12      // the pin that the LED is attached to
int incomingByte;      // a variable to read incoming serial data into

void setup() {
  // initialize serial communication:
  Serial.begin(9600);
  // initialize the LED pin as an output:
  pinMode(wootPin, OUTPUT);
}

void loop() {
  if (Serial.available() > 0) {
    incomingByte = Serial.read();
    if (incomingByte == 'g') {
      digitalWrite(wootPin, HIGH);
    }
    if (incomingByte == 's') {
      digitalWrite(wootPin, LOW);
    }
  }
}
