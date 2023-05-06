// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:khalti_clone_ui/icon_box_property.dart';

class OtherServices extends StatelessWidget {
  final String title;
  final String image;
  OtherServices({
    super.key,
     this.title ="",
    this.image = "",
  });
  final List services = [
    ["image/audiobook.png","Bridge Course"],
    ["image/College_fee.png","Education"],
    ["image/healthcare.png","Health"],
    ["image/calendar.png","Daily Essentials"],
    ["image/membership-card.png","Club & membership"],
    ["image/puzzle.png","Vendor"],
    ["image/baggage.png","Travel & Tourism"],
    ["image/social-network.png","Social cause"],

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  image,
                  style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    title,
                    style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
        Container(
          height: 95,
         
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: services.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  width: 100,
                  height: 100,
                  child: MyIconBox(
                    iconName: services[index][1],
                    icon: services[index][0],
                  ));
            },
          ),
        ),
      ],
    );
  }
}