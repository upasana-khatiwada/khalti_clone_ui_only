import 'package:flutter/material.dart';

class TransactionsForrmat extends StatelessWidget {
  final String date;
  final String day;
  final String balance;

  const TransactionsForrmat({
    Key? key,
    this.date = "",
    this.day = "",
    required this.balance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
            width: width,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  date,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(day),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text("May 2023"),
                  ],
                ),
                const SizedBox(
                  width: 150,
                ),
                Column(
                  children: [
                    const SizedBox(height: 20,),
                    const Text("Closing balance"),
                    const SizedBox(height: 5,),
                    Text(balance),
                  ],
                )
              ],
            )),
            
      ],
    );
  }
}
