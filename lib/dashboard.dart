import 'package:flutter/material.dart';
import 'recharge_bill_payments.dart';

import 'my_app_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    //this helps in getting the size of width of screen
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MyAppBar(),

            //---------------------Top Bar-------------
            Container(
              padding: const EdgeInsets.all(8),
              width: width,
              height: 60,
              color: Colors.grey.shade200,
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.pink,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(children: const [
                      Text("Rs 50 Top-up ma OnePluss 11"),
                      SizedBox(
                        width: 60.0,
                      ),
                      Text(
                        "TOPUP NOW",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.pink),
                      ),
                    ]),
                  )),
            ),

            Container(
              padding: const EdgeInsets.all(8),
              width: width,
              height: 90,
              color: Colors.white,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Row(children: [
                    Column(
                      children: const [
                        Text(
                          "Khalti Bank Direct",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text("बैंक लिङ्क गरि बिना-लोड "),
                        Text("भुक्तानी"),
                      ],
                    ),
                    const SizedBox(
                      width: 60.0,
                    ),
                    //const Text("LINK BANK NOW",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.pink),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 30,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            "LINK BANK NOW",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
              ),
            ),
            Container(
              color: Colors.grey[300],
              height: 10,
            ),

            // From here its ------------------------------Recharge bill payment-----------------------------------------------
            Container(
              color: Colors.white,
              // decoration: const BoxDecoration(
              //   color: Colors.white,
              // ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Recharge & Bill Payments",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ),
                  RechargeAndBillPayment(),
                ],
              ),
            ),
            Container(
              color: Colors.grey[300],
              height: 10,
            ),

            // Container(
            //   color: Colors.white,
            //   // decoration: const BoxDecoration(
            //   //   color: Colors.white,
            //   // ),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: const [
            //       SizedBox(
            //         height: 10,
            //       ),
            //       Padding(
            //         padding: EdgeInsets.all(4.0),
            //         child: Align(
            //           alignment: Alignment.centerLeft,
            //           child: Text(
            //             "Recharge & Bill Payments",
            //             style:
            //                 TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            //           ),
            //         ),
            //       ),
            //       RechargeAndBillPayment(),
            //     ],
            //   ),
            // )

            Container(
              padding: const EdgeInsets.all(8),
              width: width,
              height: 80,
              color: Colors.grey[300],
              child: Row(
                children: [
                  const SizedBox(
                    width: 8,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 175,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            children: const [
                              Text(
                                "KHALTI ...",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Only at Rs 300",
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 14,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Padding(padding: EdgeInsets.all(10)),
                      Container(
                        width: 185,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: const [
                              Text(
                                "BIKE/CAR..",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Get Insured",
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 14,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: Colors.grey[300],
              height: 8,
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
            Container(
              color: Colors.grey[300],
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
