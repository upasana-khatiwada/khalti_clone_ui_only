// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:khalti_clone_ui/icon_box_property.dart';

//for adding photos instead of icon only like in this case
//https://www.youtube.com/watch?v=qsdmra_wGPQ&ab_channel=AppsScope
class FeaturedServices extends StatelessWidget {
  final String title;
  final String image;
  FeaturedServices({
    super.key,
     this.title ="",
    this.image = "",
  });
  final List features = [
    ["image/Events.png", "Challenges Arena"],
    ["image/Voting.png", "Bluebook Tax.."],
    ["image/Data_pack.png", "Refer & Earn"],
    ["image/Topup.png", "Khalti ma onePlus 11"],
    ["image/College_fee.png", "Khalti quiz"],
    ["image/Government_services.png", "Link bank account"],
    ["image/Internet.png", "Load via connectIPS"],
    ["image/Financial_Services.png", "Cooperative Transfer"],
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
            itemCount: features.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  width: 100,
                  height: 100,
                  child: MyIconBox(
                    iconName: features[index][1],
                    icon: features[index][0],
                  ));
            },
          ),
        ),
      ],
    );
  }
}
