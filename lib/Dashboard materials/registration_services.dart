import 'package:flutter/material.dart';
import 'icon_box_border.dart';

class RegistrationServices extends StatelessWidget {
 

  final List imageList =[
    ["image/sq-1.jpg","Mr Nepal Registration"],
    ["image/Glam.jpg","Glam Nepal International"],
    ["image/cricket.jpg","Koshi Premier League"],
    ["image/sq-2.jpg","Miss SEE ithari 2023"],
    ["image/sq-3.jpg","Runway dreams III"],
    ["image/cricket.jpg","KCMIT BIM Cup ..."],

  ];

  RegistrationServices({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container(
      // decoration: BoxDecoration(
      //         shape: BoxShape.circle,
      //         border: Border.all(color: Colors.white)
      //       ),
      //       child: const Icon(Icons.check, color: Colors.white,),
    // );
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
            "Registrations & Enrollements",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        SizedBox(
            height: 170,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: imageList.length,
                itemBuilder: (BuildContext context, int index) {
                  return BoxIconBorder(
                    
                     iconName: imageList[index][1],
                     iconImage: imageList[index][0],

                  );
                }))
      ],
    );
  }
}