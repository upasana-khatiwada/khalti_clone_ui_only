import 'package:flutter/material.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: const Text('Transactions'),),
      body: const Center(
        child: Text('Transactions Screen',style: TextStyle(fontSize: 40),)
      ),
    );
  }
}