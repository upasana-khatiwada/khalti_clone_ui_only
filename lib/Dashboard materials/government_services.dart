import 'package:flutter/material.dart';
import 'icon_box_border.dart';

class GovernmentServices extends StatelessWidget {
  final List image = [
    ["image/traffic.jpg","Traffic Police Fine Payment"],
    ["image/nepalGov_logo.jpg","EPS Korea Management.."],
    ["image/nepalGov_logo.jpg","Bluebook Renew"],
    ["image/nepalGov_logo.jpg","No Objection Letter"],
    ["image/nepalGov_logo.jpg","IRD"],
    ["image/ssf.jpg","Social Security"],
    ["image/nepalGov_logo.jpg","Government Revenue"],
    ["image/nepalGov_logo.jpg","Waling Municipality"],
    ["image/nepalGov_logo.jpg","Passport"],
    ["image/nepalGov_logo.jpg","Loksewa"],
    
  ];
    GovernmentServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Text(
            "Popular Government Services",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        SizedBox(
            height: 170,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: image.length,
                itemBuilder: (BuildContext context, int index) {
                  return BoxIconBorder(
                    
                     iconName: image[index][1],
                     iconImage: image[index][0],

                  );
                }))
      ],
    );
  }
}