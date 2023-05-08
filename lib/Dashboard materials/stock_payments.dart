
import 'package:flutter/material.dart';
//import 'package:khalti_clone_ui/Dashboard materials/icon_box_border.dart';
import 'package:khalti_clone_ui/Dashboard materials/stock_border.dart';



// class StockNumber{
//   final String number;
//   final String icon_name; 
// }


class StockBrokerPayments extends StatelessWidget {
 final List image = [
    ["5","Market Securities"],
    ["6","Agrawal Securities"],
    ["8","Ashutosh Brokerage"],
    ["11","Malla & Malla Stoxk Broker"],
    ["14","Nepal Stock House"],
    ["16","Primo Securities"],
    ["20","Sipla Securities"],
    
 ];
 StockBrokerPayments({super.key});

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
            "Registrations & Enrollements",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        SizedBox(
            height: 170,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: image.length,
                itemBuilder: (BuildContext context, int index) {
                  return StockBorder(
                    
                     iconName: image[index][1],
                     iconNum: image[index][0],

                  );
                }))
      ],
    );
  }
}