import 'package:flutter/material.dart';

class QR extends StatefulWidget {
  const QR({super.key});

  @override
  State<QR> createState() => _QRState();
}

class _QRState extends State<QR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            "QR hiến máu của bạn là:",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 20),
          Image.asset('asset/R.png')
        ],
      ),
    );
  }
}
