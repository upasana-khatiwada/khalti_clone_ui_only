import 'package:flutter/material.dart';
import 'package:khalti_clone_ui/Appbar functions/kyc_details.dart';
import 'package:khalti_clone_ui/Appbar functions/nominee.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                "My Account",
                style: TextStyle(
                    color: Colors.purple.shade900,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 5),
                      //offset: Offset(0, kElevationToShadow[8].dy),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 75,
                      width: 65,
                      child: Image(
                        image: AssetImage("image/upasana.jpg"),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.verified,
                          color: Colors.blue.shade900,
                          size: 10,
                        ),
                        const Text(
                          "Verified",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Upasana Khatiwada",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("9843237645"),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "ADD EMAIL",
                      style: TextStyle(
                          color: Colors.deepPurple.shade600,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.person_pin_sharp,
                          color: Colors.green,
                        ),
                        Text(
                          "consumer",
                          style: TextStyle(color: Colors.green, fontSize: 13),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: Image(
                            image: AssetImage("image/blank-avatar.png"),
                            color: Colors.pink,
                          ),
                        ),
                        Text(
                          "person",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.pink,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.person_pin_sharp,
                          color: Colors.purple,
                        ),
                        Text(
                          "User",
                          style: TextStyle(color: Colors.purple, fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                // padding: const EdgeInsets.all(4),
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: const Image(image: AssetImage("image/SuscribeNow.jpg")),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.5,
                      blurRadius: 3,
                      offset: const Offset(0, 5),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: Image(
                              image: const AssetImage("image/wallet.png"),
                              color: Colors.purple.shade700),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "Rs ",
                                  style: TextStyle(fontSize: 14),
                                ),
                                Text(
                                  "882567.68",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            const Text(
                              "Available Balance",
                              style: TextStyle(fontSize: 11),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //Main balance row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Main Balance",
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold),
                        ),
                        const Text("Rs. 882567.68")
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //Bonus balance row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Bonus Balance",
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold),
                        ),
                        const Text("Rs. 0")
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //Khalti points row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Khalti Points",
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold),
                        ),
                        const Text("KP 552")
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //drawing divider line of thickness 0.3
                    Divider(
                      color: Colors.grey[600],
                      thickness: 0.3,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.new_releases_outlined,
                          color: Colors.grey.shade400,
                        ),
                        Text(
                          "Note: Bonus Balance is not transferable",
                          style: TextStyle(color: Colors.grey.shade400),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              //List tile for two buttons in column
              ListTile(
                leading: const Icon(Icons.person_2_rounded),
                title: const Text("KYC Details"),
                subtitle: const Text("View your KYC details"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const KYCdetails();
                  }));
                },
              ),
              ListTile(
                leading: const Icon(Icons.star),
                title: const Text("Nominee"),
                subtitle: const Text("Add nominee to your Khalti Account"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const Nominee();
                  }));
                },
              ),
              Divider(
                color: Colors.grey.shade700,
                thickness: 0.5,
              ),
              const SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(
                    text:
                        'To change any details after verification,please contact our Support Team at ',
                    style: const TextStyle(color: Colors.grey, fontSize: 15),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'support@khalti.com ',
                          style: TextStyle(
                              color: Colors.purple.shade700,
                              fontWeight: FontWeight.bold,
                              fontSize: 22)),
                      const TextSpan(text: 'or '),
                      TextSpan(
                          text: '1660-01-5-8888',
                          style: TextStyle(
                              color: Colors.purple.shade700,
                              fontWeight: FontWeight.bold,
                              fontSize: 22)),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
