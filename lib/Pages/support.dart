import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
//import 'package:khalti_clone_ui/Pages/home.dart';

class Support extends StatefulWidget {
    final PersistentTabController controller;
  const Support({Key? key, required this.controller}) : super(key: key);

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(title: const Text('Support'),),
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: GestureDetector(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                //   return const HomePage();
                // }));
              //  Navigator.pop(context);
               widget.controller.jumpToTab(0);

              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(4),
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                "Help & Support",
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
                "Customer Support, Feedbacks, FAQs",
                style: TextStyle(
                    fontSize: 16,
                    //fontWeight: FontWeight.bold,
                    color: Colors.grey.shade800),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Image(
                      height: 30,
                      width: 30,
                      //color: Colors.purple.shade900,
                      image: AssetImage("image/messenger.jpg")),
                ),
                Text(
                  "Facebook messenger   ",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black),
                )
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Image(
                      height: 30,
                      width: 30,
                      //color: Colors.purple.shade900,
                      image: AssetImage("image/whatsapp.jpg")),
                ),
                RichText(
                  text: const TextSpan(
                      text: "9801165561    ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black),
                      children: [
                        TextSpan(
                            text: "(Whatsapp-chat only)   ",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            )),
                      ]),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Image(
                      height: 30,
                      width: 30,
                      //color: Colors.purple.shade900,
                      image: AssetImage("image/viber.jpg")),
                ),
                RichText(
                  text: const TextSpan(
                      text: "khalti.com/viber    ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black),
                      children: [
                        TextSpan(
                            text: "(Viber-chat only)   ",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            )),
                      ]),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image(
                      height: 30,
                      width: 30,
                      color: Colors.purple.shade900,
                      image: const AssetImage("image/old-typical-phone.png")),
                ),
                RichText(
                  text: const TextSpan(
                      text: "1660-01-5-8888    ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black),
                      children: [
                        TextSpan(
                            text: "(Toll-Free)   ",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            )),
                      ]),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image(
                      height: 30,
                      width: 30,
                      color: Colors.purple.shade900,
                      image: const AssetImage("image/old-typical-phone.png")),
                ),
                RichText(
                  text: const TextSpan(
                      text: "015970017    ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black),
                      children: [
                        TextSpan(
                            text: "(LandLine)   ",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            )),
                      ]),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.email_outlined,
                    color: Colors.purple.shade900,
                  ),
                ),
                RichText(
                  text: const TextSpan(
                      text: "support@khalti.com    ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black),
                      children: [
                        TextSpan(
                            text: "(Email address)   ",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            )),
                      ]),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Image(
                      height: 30,
                      width: 30,
                      //color: Colors.purple.shade900,
                      image: AssetImage("image/whatsapp.jpg")),
                ),
                RichText(
                  text: const TextSpan(
                      text: "khalti Travel Desk    ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black),
                      children: [
                        TextSpan(
                            text: "(Whatsapp-chat only)   ",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            )),
                      ]),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Image(
                      height: 30,
                      width: 30,
                      //color: Colors.purple.shade900,
                      image: AssetImage("image/whatsapp.jpg")),
                ),
                RichText(
                  text: const TextSpan(
                      text: "Khalti Bluebook Service    ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black),
                      children: [
                        TextSpan(
                            text: "(Whatsapp-chat only)   ",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            )),
                      ]),
                ),
              ],
            ),
            Divider(
              color: Colors.grey[600],
              thickness: 0.3,
            ),
            ListTile(
              leading: Icon(Icons.chat_bubble,color: Colors.purple.shade900,),
              title: const Text(
                "FAQs",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              subtitle: const Text("Get help from FAQs"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.purple.shade900,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.message,
                color: Colors.purple.shade900,
              ),
              title: const Text(
                "Report Issues",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              subtitle: const Text("We would love to hear fro you"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.purple.shade900,
              ),
            ),
          ],
              ),
            ),
        ));
  }
}
