# illuminiq: Smart Street Lighting System

## About The Project

The illuminiq project is a smart street lighting system designed to provide an efficient, automated lighting solution for urban environments. This system uses Arduino and microcontrollers to intelligently control street lights, enhancing energy conservation while maintaining public safety. Originally, this project was built for a student competition "Mc2" in which we finished 3rd. 

### Features

- **Automated Light Control**: Street lights turn on or off based on ambient light levels.
- **Motion Detection**: Integrated PIR sensors detect movement to provide lighting as needed.
- **Remote Management**: A web application allows for remote monitoring and control.
- **Scalability**: Designed to easily expand across multiple street sections.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

What things you need to install the software and how to install them:

- [Node.js](https://nodejs.org/en/download/) (version 20.10.0. and above)
- [Arduino IDE](https://www.arduino.cc/en/software)
- [MySQL](https://dev.mysql.com/downloads/)
- [XAMPP](https://www.apachefriends.org/index.html) (for MySQL and PHP development)

### Installation

1. **Clone the repository**:
   ```sh
   git clone https://github.com/your-username/illuminiq.git
   ```
2. **Set up the database**:
   - Start XAMPP and create a new MySQL database named `illuminiq`.
   - Import the database schema from the `/database` directory.
3. **Run the Node.js server**:
   - Navigate to the `/server` directory and run `npm install` to install dependencies.
   - Start the server using `npm start`.
4. **Run the client application**:
   - Navigate to the `/client20` directory and run `npm install`.
   - Start the client using `npm start`.
5. **Arduino and microcontroller setup**:
   - Open the Arduino code from the `/arduino` directory in the Arduino IDE.
   - Configure your microcontroller with the NodeMCU firmware.
   - Upload the code to your Arduino and NodeMCU devices.

## Setup

1. **Relays**:
-Relay 5 ->port 11 Arduino
-Relay 4 ->port 10 Arduino
-Relay 3 ->port 9 Arduino
-Relay 2 ->port 8 Arduino
-Relay 1 ->port 7 Arduino
-Relay DC- -> Breadboard -
-Relay DC+ -> Breadboard +

2. **Sensors**:
-PIR sensor5 ->port 6 Arduino
-PIR sensor4 ->port 5 Arduino
-PIR sensor3 ->port 4 Arduino
-PIR sensor2 ->port 3 Arduino
-PIR sensor1 ->port 2 Arduino
-PIR sensor VCC -> 5V Arduino
-PIR sensor GND -> GND Arduino

3. **NodeMCu**:
-NodeMCu RX  ->port 1 Arduino
-NodeMCu TX  ->port 0 Arduino
-NodeMCu GND ->GND Arduino
-NodeMCu 3V3 ->Rst Arduino

## Usage

To use the illuminiq system, follow these steps:

1. **Power on the hardware**: Ensure the Arduino and NodeMCU are powered and operational.
2. **Set up hosting**: Start XAMPP's mySQL and Apache services and make sure you have the imported database. Connect to the "5G" WiFi network emitted by nodeMCu.
3. **Access the web application**: Run 'npm start' inside the server folder and the client folder.

## Contributing

We welcome contributions to the illuminiq project. Any contributions you make are **greatly appreciated**. If you have a suggestion that would make this better, please fork the repo and create a pull request.

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Contact

Mislav Penić - [mislav.penic@tvz.hr](mailto:mislav.penic@tvz.hr)
Krunoslav Matić - [krunoslav.matic@tvz.hr](mailto:krunoslav.matic@tvz.hr)
Marino Kuljanac - [marino.kuljanac@tvz.hr](mailto:marino.kuljanac@tvz.hr)

Project Link: [https://github.com/mPenic/illuminiq](https://github.com/mPenic/illuminiq)

