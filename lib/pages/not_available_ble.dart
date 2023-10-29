import 'package:flutter/material.dart';



class not_available_ble extends StatelessWidget{
  const not_available_ble({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BLE Connection',
        ),
      ),
    );
  }

}

void main() {
  runApp(const not_available_ble());
}