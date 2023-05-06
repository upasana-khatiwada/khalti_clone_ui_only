import 'package:flutter/material.dart';
import 'package:khalti_clone_ui/icon_box_property.dart';

class InsuranceServices extends StatelessWidget {
  final String title;
  final String image;
  InsuranceServices({
    super.key,
     this.title ="",
    this.image = "",
  });
   final List features = [
    ["image/healthcare.png", "Khalti Suraksha"],
    ["image/Ride.png", "Bike/Car Insurance"],
    ["image/nepalGov_logo.jpg", "DOFE Insurance"],
    ["image/insurance.png", "Reliable Surakshit..."],
    ["image/Government_services.png", "DOFE Welfare"],
  
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
        SizedBox(
          height: 95,
         
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: features.length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
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