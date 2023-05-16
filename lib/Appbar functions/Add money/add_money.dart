import 'package:flutter/material.dart';
 import 'bank_tab.dart';
 import 'otherways_tab.dart';

class AddMoney extends StatefulWidget {
  const AddMoney({Key? key}) : super(key: key);
  @override
  State<AddMoney> createState() => _AddMoneyState();
}

class _AddMoneyState extends State<AddMoney> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      body: Padding(
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
           
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              elevation: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: TabBar(

                  //adding color in which tabbaris used
                  // indicator: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(4),
                  //   color: Colors.orange,
                  // ),
                  controller: tabController,
                  isScrollable: true,
                  labelColor: Colors.purple.shade900,
                  unselectedLabelColor: Colors.grey.shade700,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 70),
                  tabs: const [
                    Tab(child: Text(
                  "Banks",
                  style: TextStyle(
                       fontSize: 18),
                ),),
                Tab(
                child: Text(
                  "Other ways",
                  style: TextStyle(
                    
                      fontSize: 18),
                ),
              )

                  ],)
              ),
            ),
            Expanded(child: TabBarView(
              controller: tabController,
              children: const <Widget>[
                // ListView.builder(
                //   physics: const BouncingScrollPhysics(),
                //   shrinkWrap: true,
                //   itemCount: 5,
                //   itemBuilder: (context,index){
                //     return const Card(
                //       margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                //       BankTab(),
                      
                //     );
                //   },
                //   )
                BankTab(),
                OtherWaysTab(),



            ],))
          ],
        ),
      ),
    );
  }
}
