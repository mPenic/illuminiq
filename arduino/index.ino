#include <Bounce2.h>

const int numPirs = 5;
const int pirPins[numPirs] = {2, 3, 4, 5, 6};
const int relayPins[numPirs] = {7, 8, 9, 10, 11};
const int activeTime = 4000;

Bounce pirBounce[numPirs];
bool pirActive[numPirs] = {false};
unsigned long lastActiveTime[numPirs] = {0};

void setup() {
  Serial.begin(9600);

  for (int i = 0; i < numPirs; i++) {
    pinMode(relayPins[i], OUTPUT);
    digitalWrite(relayPins[i], LOW);

    pirBounce[i].attach(pirPins[i]);
    pirBounce[i].interval(50);
  }
}

void loop() {
  for (int i = 0; i < numPirs; i++) {
    pirBounce[i].update();
    int pirState = pirBounce[i].read();

    if (pirState == HIGH) {
      if (!pirActive[i]) {
        pirActive[i] = true;
        lastActiveTime[i] = millis();
        digitalWrite(relayPins[i], HIGH);


        // Slanje podataka na NodeMCU ESP8266
        String message = "PIR " + String(i + 1) + " activated";
        Serial.println(message);
      } else {
        lastActiveTime[i] = millis();
      }
    } else if (pirActive[i] && millis() - lastActiveTime[i] > activeTime) {
      pirActive[i] = false;
      digitalWrite(relayPins[i], LOW);


      // Slanje podataka na NodeMCU ESP8266
      String message = "PIR " + String(i + 1) + " deactivated";
      Serial.println(message);
    }
  }

  delay(100);
}