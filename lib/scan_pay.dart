import 'package:flutter/material.dart';

class ScanAndPay extends StatefulWidget {
  const ScanAndPay({super.key});

  @override
  State<ScanAndPay> createState() => _ScanAndPayState();
}

class _ScanAndPayState extends State<ScanAndPay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scan and Pay'),),
      body: const Center(
        child: Text('Scan and Pay Screen',style: TextStyle(fontSize: 40),)
      ),
    );
  }
}