import 'package:flutter/material.dart';
import 'icon_box_property.dart';

class RechargeAndBillPayment extends StatefulWidget {
  const RechargeAndBillPayment({super.key});

  @override
  State<RechargeAndBillPayment> createState() => _RechargeAndBillPaymentState();
}

class _RechargeAndBillPaymentState extends State<RechargeAndBillPayment> {
  int maxItemsToShow = 12;
  bool _showMore = false;
  List icons = [
    ["image/Topup.png", "Topup", "1-2% Cashback"],
    ["image/Data_pack.png", "Data/Voice pack", ""],
    ["image/Internet.png", "Internet", "1-2% cashback"],
    ["image/tv.png", "TV", ""],
    ["image/movie.png", "Movie", ""],
    ["image/Flights.png", "Flight", "1-2% Cashback"],
    ["image/Electricity.png", "Electricity", ""],
    ["image/Voting.png", "Voting", ""],
    ["image/Events.png", "Events", ""],
    ["image/Government_services.png", "Government Services", ""],
    ["image/insurance.png", "Insurance", ""],
    ["image/landline.png", "Landline", ""],
    ["image/Khanepani.png", "Khanepani", ""],
    ["image/Bus_Ticket.png", "Bus Ticket", ""],
    ["image/cable_car.png", "Cable Car", ""],
    ["image/College_fee.png", "School/College Fee", ""],
    ["image/EMI.png", "EMI", ""],
    ["image/antivirus.png", "Antivirus", "15% Cashback"],
    ["image/Financial_Services.png", "Financial Services", ""],
    ["image/RC_Card.png", "RC Card", ""],
    ["image/Ride.png", "Ride", ""],
    ["image/Community_Electricity.png", "Community Electricity", ""],
    ["image/Waste.png", "Waste", ""],
  ];

  // Function to show or hide more items
  void toggleShowMore() {
    setState(() {
      _showMore = !_showMore;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: (_showMore || icons.length > 12)
              ? null
              : MediaQuery.of(context).size.height / 1.6,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
             
              childAspectRatio: 1.1,
            ),
            itemCount:  _showMore ? icons.length : 12,
            itemBuilder: (context, index) {
              if (_showMore || index < 12) {
                return MyIconBox(
                  icon: icons[index][0],
                  iconName: icons[index][1],
                  cashback: icons[index][2],
                );
              } else {
                return Container(); // empty SizedBox to hide the item
              }
            },
          ),
        ),
        InkWell(
          onTap: () {
            toggleShowMore();
          },
          child: Container(
            width: 150,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.purple.shade100),
            child: _showMore
                ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "View less",
                        style: TextStyle(
                            color: Colors.purple.shade900,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 5,),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.purple.shade900,
                      )
                    ],
                  )
                : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "View more",
                        style: TextStyle(
                            color: Colors.purple.shade900,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 5,),
                      Icon(
                        Icons.keyboard_arrow_up,
                        color: Colors.purple.shade900,
                      )
                    ],
                  ),
          ),
        ),
        const SizedBox(height: 15,),
      ],
    );
  }
}
