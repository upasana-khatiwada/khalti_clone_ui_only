import 'package:flutter/material.dart';

class BankTab extends StatelessWidget {
  const BankTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image(
              height: 30,
              width: 30,
              color: Colors.purple.shade900,
              image: const AssetImage("image/Government_services.png")),
          title: const Text(
            "Linked Bank Accounts",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          subtitle: const Text("Add money by linking bank A/C number"),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.purple.shade900,
          ),
          // onTap: () {
          //   Navigator.push(context,
          //       MaterialPageRoute(builder: (BuildContext context) {
          //     return const KYCdetails();
          //   }));
          // },
        ),
        ListTile(
          leading: Image(
              height: 30,
              width: 30,
              color: Colors.purple.shade900,
              image: const AssetImage("image/Government_services.png")),
          title: const Text(
            "eBanking",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          subtitle: const Text("Use partner bank's eBanking"),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.purple.shade900,
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.send_to_mobile_rounded,
            color: Colors.purple.shade900,
          ),
          title: const Text(
            "Mobile Banking",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          subtitle: const Text("Use partner bank's Mobile App"),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.purple.shade900,
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.credit_card,
            color: Colors.purple.shade900,
          ),
          title: const Text(
            "ATM Debit/Credit/STC Cards",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          subtitle: const Text("Add using Card number & other details"),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.purple.shade900,
          ),
        ),
        ListTile(
          leading: Image(
              height: 30,
              width: 30,
              color: Colors.purple.shade900,
              image: const AssetImage("image/social-network.png")),
          title: const Text(
            "connect IPS",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          subtitle: const Text("Use linked bank A/C in connect IPS"),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.purple.shade900,
          ),
        ),
      ],
    );
  }
}
