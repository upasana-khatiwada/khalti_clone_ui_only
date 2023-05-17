import 'package:flutter/material.dart';

class Nominee extends StatelessWidget {
  const Nominee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kyc details'),),
      body: const Center(
        child: Text('kyc details',style: TextStyle(fontSize: 40),)
      ),
    );
  }
}