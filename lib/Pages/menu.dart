import 'package:flutter/material.dart';
//import 'package:khalti_clone_ui/Appbar%20functions/my_account.dart';
import 'package:khalti_clone_ui/Appbar functions/my_account.dart';
import 'package:khalti_clone_ui/Appbar%20functions/kyc_details.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 120,
                    width: 75,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 95,
                          width: 75,
                          child: Image(
                            image: AssetImage("image/upasana.jpg"),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Colors.grey.shade300),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.verified,
                                color: Colors.purple.shade900,
                                size: 10,
                              ),
                              const Text(
                                "Verified",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 30,
                              width: 30,
                              child: Image(
                                  image: const AssetImage("image/wallet.png"),
                                  color: Colors.purple.shade700),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "Rs ",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Text(
                                      "882567.68",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Icon(
                                      Icons.restart_alt_outlined,
                                      color: Color.fromARGB(255, 73, 1, 86),
                                    )
                                  ],
                                ),
                                const Text(
                                  "Khalti Balance",
                                  style: TextStyle(fontSize: 14),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // SizedBox(
                            //   height: 30,
                            //   width: 30,
                            //   child: Image(
                            //       image: const AssetImage("image/wallet.png"),
                            //       color: Colors.purple.shade700),
                            // ),
                            Icon(
                              Icons.star_border_purple500_rounded,
                              color: Colors.purple.shade700,
                              size: 39,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "KP ",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Text(
                                      "552",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                                const Text(
                                  "Khalti Points",
                                  style: TextStyle(fontSize: 14),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const MyAccount();
                  }));
                },
                child: const Text(
                  "View Profile",
                  style: TextStyle(
                      color: Color.fromARGB(255, 61, 4, 131),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              const Text(
                "Upasana",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  fontSize: 26,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Khatiwada",
                style: TextStyle(
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "9843476349",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.purple.shade100,
                    ),
                    child: GestureDetector(
                      onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const KYCdetails();
                  }));
                },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text("View KYC",style: TextStyle(
                            color: Colors.purple.shade900
                          ),),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                //rethrow image loading error
                // image: const DecorationImage(
                //    image: AssetImage("image/SuscribeNow.jpg"),
                // )
              ),
              //doesnot load other icon so its no
              //child: Image.asset("image/SuscribeNow.jpg"),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("image/SuscribeNow.jpg")),
            ),
            const SizedBox(
                height: 5,
              ),
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
          ),
        ),
      ),
    );
  }
}
