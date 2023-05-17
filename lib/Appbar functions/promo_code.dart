import 'package:flutter/material.dart';

class PromoCode extends StatefulWidget {
  const PromoCode({super.key});

  @override
  State<PromoCode> createState() => _PromoCodeState();
}

class _PromoCodeState extends State<PromoCode> {
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