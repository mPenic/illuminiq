#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include <ESP8266WebServer.h>

const char* ssid = "5G"; // Naziv vaše AP mreže
const char* password = "12345678"; // Lozinka vaše AP mreže
IPAddress serverIP(192, 168, 4, 1);

ESP8266WebServer server(80);

String data[15]; // polje za pohranu zadnjih 15 promjena
int dataIndex = 0; // indeks za dodavanje novih promjena

void setup() {
  Serial.begin(9600);
  delay(100);

  // Stvaranje AP mreže
  WiFi.mode(WIFI_AP);
  WiFi.softAP(ssid, password);
  IPAddress myIP = WiFi.softAPIP();
  Serial.println("");
  Serial.println("Access Point mode activated");
  Serial.print("SSID: ");
  Serial.println(ssid);
  Serial.print("Password: ");
  Serial.println(password);
  Serial.print("AP IP address: ");
  Serial.println(myIP);

  // Postavljanje HTTP rute
  server.on("/", handleRequest);

  // Pokretanje servera
  server.begin();
  Serial.println("HTTP server started");
}

void loop() {
  server.handleClient();
}

void handleRequest() {
  // Čitanje podataka s Arduina
  String receivedData = Serial.readStringUntil('\n');
  
  // Dodavanje novih podataka u polje
  data[dataIndex] = receivedData;
  dataIndex = (dataIndex + 1) % 15;

  // Ispisivanje podataka na web stranici
  String html = "<html><head><script>";
  html += "setTimeout(function() { location.reload(); }, 1000);"; // automatsko ažuriranje svake sekunde
  html += "</script></head><body><h1>Zadnjih 15 primljenih podataka:</h1><ul>";

  // Ispisivanje zadnjih 15 podataka
  int i = dataIndex;
  for (int j = 0; j < 15; j++) {
    if (data[i] != "") {
      html += "<li>";
      html += data[i];
      html += "</li>";
    }
    i = (i + 1) % 15;
  }
  
  html += "</ul></body></html>";
  server.send(200, "text/html", html);
}