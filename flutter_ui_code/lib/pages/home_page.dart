import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:libserialport/libserialport.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SerialPort port = SerialPort(
      'COM2'); // Connecting to COM2 PORT in Virtual Serial Port Driver

  // Configurations at the Microcontroller Side are set as follows
  /* ROOMS 1,2,3 are configured to toggle logic by sending just the room's number as a char '1', '2', '3'  */
  /* TV is configured to toggle logic by sending '4' */
  /* AC Is configured to toggle logic by sending '5'
     also AC Temperature Can be set by sending */

  void room_1_toggle_Lights() {
    if (!port.isOpen) return;
    port.write(Uint8List.fromList('1\n'.codeUnits));
  }

  void room_2_toggle_Lights() {
    if (!port.isOpen) return;
    port.write(Uint8List.fromList('2\n'.codeUnits));
  }

  void room_3_toggle_Lights() {
    if (!port.isOpen) return;
    port.write(Uint8List.fromList('3\n'.codeUnits));
  }

  void TV_toggle_Power() {
    if (!port.isOpen) return;
    port.write(Uint8List.fromList('4\n'.codeUnits));
  }

  void AC_toggle_Power() {
    if (!port.isOpen) return;
    port.write(Uint8List.fromList('5\n'.codeUnits));
  }

  final _controller = TextEditingController();

  void AC_Set_Temperature() {
    String temperature = _controller.text;
    if (!port.isOpen) return;
    port.write(Uint8List.fromList('T$temperature\n'.codeUnits));
    setState(() {
      _controller.clear();
    });
  }

  bool roomsMenuStatus = false;
  bool ACMenuStatus = false;
  bool TVMenuStatus = false;

  void roomsMenuToggle() {
    setState(() {
      roomsMenuStatus = !roomsMenuStatus;
    });
  }

  void ACMenuToggle() {
    setState(() {
      ACMenuStatus = !ACMenuStatus;
    });
  }

  void TVMenuToggle() {
    setState(() {
      TVMenuStatus = !TVMenuStatus;
    });
  }

  @override
  void initState() {
    super.initState();
    initPort();
  }

  void openPort() {
    port.openReadWrite();
  }

  void closePort() {
    port.close();
  }

  void initPort() {
    port.openReadWrite();
    try {
      port.config = SerialPortConfig()
        ..baudRate = 9600
        ..bits = 8
        ..parity = SerialPortParity.none;
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        title: const Text('Smart Home Control'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: roomsMenuToggle, child: Text('ROOMS')),
            SizedBox(height: 30),
            if (roomsMenuStatus)
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: room_1_toggle_Lights,
                    child: Text('Switch ROOM 1 Lights  On/OFF'),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: room_2_toggle_Lights,
                    child: Text('Switch ROOM 2 Lights On/OFF'),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: room_3_toggle_Lights,
                    child: Text('Switch ROOM 3 Lights On/OFF'),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ElevatedButton(onPressed: ACMenuToggle, child: Text('AC')),
            SizedBox(height: 30),
            if (ACMenuStatus)
              Column(
                children: [
                  ElevatedButton(
                    onPressed: AC_toggle_Power,
                    child: Text('Switch AC Power On/OFF'),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 60,
                        height: 40,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: TextField(
                            controller: _controller,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.deepPurple.shade200,
                              hintText: '..°C',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:
                                    BorderSide(color: Colors.deepPurple),
                              ),
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: AC_Set_Temperature,
                        child: Text('Set Temperature in °C'),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ElevatedButton(onPressed: TVMenuToggle, child: Text('TV')),
            SizedBox(height: 30),
            if (TVMenuStatus)
              ElevatedButton(
                onPressed: TV_toggle_Power,
                child: Text('Switch TV On/OFF'),
              ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
