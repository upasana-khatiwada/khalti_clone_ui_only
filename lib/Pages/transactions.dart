import 'package:flutter/material.dart';
import 'package:khalti_clone_ui/Pages/main_transaction.dart';
import 'package:khalti_clone_ui/Pages/transactions_format.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(title: const Text('Transactions'),),
        body: Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Transaction History",
              style: TextStyle(
                  color: Colors.purple.shade900,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              " Showing transactions of last 30 days",
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const TransactionsForrmat(
            date: "16",
            day: "Tuesday",
            month: "May",
            balance: "154.18",
          ),
          const MainTransaction(
            title: "Wallet Payment",
            subtitle: "WorldLink Communication limited",
            icon: "image/wallet.png",
            icon2: Icons.arrow_circle_down_outlined,
            balance: "1,582",
          ),
          const TransactionsForrmat(
            date: "13",
            day: "Saturday",
            month: "May",
            balance: "286.18",
          ),
          const MainTransaction(
            title: "NTC",
            subtitle: "9843000000",
            icon: "image/ntc.jpg",
            icon2: Icons.arrow_circle_up,
            balance: "100",
          ),

        ],
      ),
    ));
  }
}
