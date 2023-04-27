import 'package:flutter/material.dart';
import 'package:khalti_clone_ui/add_money.dart';
import 'package:khalti_clone_ui/send_money.dart';
import 'my_account.dart';
import 'promo_code.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  bool showBalance = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const MyAccount();
                    })),
                  },
                  child: const CircleAvatar(
                    radius: 16,
                    backgroundImage: AssetImage('image/upasana.jpg'),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const Text(
                  "Upasana",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 120.0,
                ),
                const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                InkWell(
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const PromoCode();
                    })),
                  },
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    height: 25,
                    width: 25,
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        Colors.white
                            .withOpacity(0.5), // Make 50% of the image white
                        BlendMode
                            .modulate, // Apply the color filter using a multiply blend mode
                      ),
                      child: Image.asset(
                        "image/gift-box.png",
                        color: Colors.pink.shade300,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                const Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                )
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    left: 8.0,
                    right: 0.0,
                    bottom: 8.0,
                  ),
                  child: Container(
                    width: 175,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                    top: 8.0,
                    left: 8.0,
                    right: 0.0,
                    bottom: 0.0,
                  ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                const Text(
                                  "रु",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                showBalance
                                    ? const Text(
                                        "882.68",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.purple,
                                        ),
                                      )
                                    : const Text(
                                        "XXXXX",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.purple,
                                        ),
                                      )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      showBalance = !showBalance;
                                    });
                                  },
                                  child: showBalance
                                      ? const Icon(
                                          Icons.visibility,
                                          color: Colors.purple,
                                        )
                                      : const Icon(
                                          Icons.visibility_off,
                                          color: Colors.purple,
                                        )),
                              const Text(
                                "Khalti Balance",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.purple,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                //Adding refresh button
                Positioned(
                  left: 110,
                  top: 40,
                  child: Container(
                    //height: 22,
                   // width: 22,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(50),
                        ),
                    child: const Icon(
                      Icons.restart_alt,
                      color: Colors.purple,
                      size: 20,
                    ),
                  ),
                ),

                const SizedBox(width: 30.0,),
                Column(
                  children: [
                    InkWell(
                      onTap: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const AddMoney();
                        })),
                      },
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 35,
                        width: 35,
                          child: Container(
                            height: 25,
                            width: 20,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),
                            color: Colors.white),
                            child: Image.asset(
                            "image/wallet.png",
                            color: Colors.purple,
                            fit: BoxFit.contain,
                          ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Column(
                        children: const [
                           Text("Add ",
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          Text("Money",
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        ],
                        
                      ),
                  ],
                  
                ),
                const SizedBox(width: 25.0,),
                Column(
                  children: [
                    InkWell(
                      onTap: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const SendMoney();
                        })),
                      },
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 40,
                        width: 40,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),
                            color: Colors.white),
                            child: const Icon(Icons.phone_android,
                            color: Colors.purple,)
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Column(
                        children: const [
                           Text("Send ",
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          Text("Money",
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        ],
                        
                      ),
                  ],
                  
                ),

                
              


                
              ],
            )
          ],
        ),
      ),
    );
  }
}
