import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QrCodeScanner extends StatelessWidget {
  final MobileScannerController controller = MobileScannerController();

  QrCodeScanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('QR Code Scanner')),
      body: MobileScanner(
        controller: controller,
        onDetect: (BarcodeCapture capture) {
          for (final barcode in capture.barcodes) {
            // Print or show the scanned QR data
            print(barcode.rawValue);
          }
        },
      ),
    );
  }
}
