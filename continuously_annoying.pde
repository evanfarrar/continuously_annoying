#define wootPin 12      // the pin that the LED is attached to
int incomingByte;      // a variable to read incoming serial data into
int lightState = LOW;

void setup() {
  // initialize serial communication:
  Serial.begin(9600);
  // initialize the LED pin as an output:
  pinMode(wootPin, OUTPUT);
}

void loop() {
  // see if there's incoming serial data:
  if (Serial.available() > 0) {
    // if it's a capital L, toggle the Light:
    if (Serial.read() == 'L') {
      lightState = !lightState;
      digitalWrite(wootPin, lightState);
    } 
  }
}
