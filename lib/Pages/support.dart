import 'package:flutter/material.dart';

class Support extends StatefulWidget {
  const Support({super.key});

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: const Text('Support'),),
      body: const Center(
        child: Text('Support Screen',style: TextStyle(fontSize: 40),)
      ),
    );
  }
}