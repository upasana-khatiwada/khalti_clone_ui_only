import 'package:flutter/material.dart';

class AddMoney extends StatefulWidget {
  const AddMoney({super.key});

  @override
  State<AddMoney> createState() => _AddMoneyState();
}

class _AddMoneyState extends State<AddMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "Add Money",
                  style: TextStyle(
                      color: Colors.purple.shade900,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "Available Balance Rs 882567.68",
                  style: TextStyle(
                      fontSize: 16,
                      //fontWeight: FontWeight.bold,
                      color: Colors.grey.shade800),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
               ListTile(
                leading: Image(
                  height: 30,
                  width: 30,
                  color: Colors.purple.shade900,
                  image: const AssetImage("image/Government_services.png")),
                title: const Text("Linked Bank Accounts",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                subtitle: const Text("Add money by linking bank A/C number"),
                trailing:  Icon(Icons.arrow_forward_ios,color: Colors.purple.shade900,),
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
                title: const Text("eBanking",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                subtitle: const Text("Use partner bank's eBanking"),
                trailing:  Icon(Icons.arrow_forward_ios,color: Colors.purple.shade900,),
                
              ),
               ListTile(
                leading:  Icon(Icons.send_to_mobile_rounded,color: Colors.purple.shade900,),
                title: const Text("Mobile Banking",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                subtitle: const Text("Use partner bank's Mobile App"),
                trailing:  Icon(Icons.arrow_forward_ios,color: Colors.purple.shade900,),
                
              ),
               ListTile(
                leading:  Icon(Icons.credit_card,color: Colors.purple.shade900,),
                title: const Text("ATM Debit/Credit/STC Cards",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                subtitle: const Text("Add using Card number & other details"),
                trailing:  Icon(Icons.arrow_forward_ios,color: Colors.purple.shade900,),
                
              ),
               ListTile(
                leading: Image(
                  height: 30,
                  width: 30,
                  color: Colors.purple.shade900,
                  image: const AssetImage("image/social-network.png")),
                title: const Text("connect IPS",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                subtitle: const Text("Use linked bank A/C in connect IPS"),
                trailing:  Icon(Icons.arrow_forward_ios,color: Colors.purple.shade900,),
                
              ),


            ],
          ),
        ),
      ),
    );
  }
}
