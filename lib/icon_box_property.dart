// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MyIconBox extends StatelessWidget {
  
  final icon;
  final String iconName;
  final String cashback;
  const MyIconBox(
      {super.key,
      required this.icon,
      required this.iconName,
      this.cashback = ""});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              height: 30,
              width: 30,
              child: Image.asset(
                icon,
                fit: BoxFit.cover,
                color: Colors.purple,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3, bottom: 8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  iconName,
                  style: const TextStyle(fontSize: 12),
                ),
              ),
            ),
            const SizedBox(height: 2,),
            Padding(padding: const EdgeInsets.only(left: 3,bottom: 8.0),
            child: cashback!= ""?Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.pink,
              ),
              child: Padding(
                padding: const EdgeInsets.all(1.0),

                child: Text( cashback,style: const TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                ),),
              ),
            ): Container()
            ),
          ],),
    );
  }
}
