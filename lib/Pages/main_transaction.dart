// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MainTransaction extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final icon2;
  final String balance;
  const MainTransaction({
    Key? key,
    this.title = "",
    this.subtitle = "",
    this.icon = "",
    this.icon2 = "",
    required this.balance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        ListTile(
          leading: SizedBox(
            height: 20,
            width: 20,
            child: Image.asset(
              icon,
              fit: BoxFit.cover,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              //  SizedBox(
              //   width: width-320,
              // ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    balance,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  //     SizedBox(
                  //   height: 20,
                  //   width: 20,
                  //   child: Image.asset(
                  //     icon2,
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                  Icon(
                    icon2,
                    color: _getIconColor(),
                  ),
                ],
              )
            ],
          ),
          subtitle: Text(subtitle),
        ),
      ],
    );
  }

  Color _getIconColor() {
    // Add your logic to determine the color based on the value of icon2
    // For example:
    if (icon2 == Icons.arrow_circle_down_outlined) {
      return Colors.redAccent.shade700;
    } else {
      return Colors
          .green.shade600; // Change this to the desired color for other icons
    }
  }
}
