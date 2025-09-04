import 'package:flutter/material.dart';
import 'qr_code_scanner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code Scanner App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: QrCodeScanner(),
    );
  }
}
