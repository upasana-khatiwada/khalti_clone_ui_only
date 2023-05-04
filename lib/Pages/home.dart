
import 'package:flutter/material.dart';
import 'package:khalti_clone_ui/Pages/dashboard.dart';
import 'package:khalti_clone_ui/Pages/menu.dart';
import 'package:khalti_clone_ui/Pages/scan_pay.dart';
import 'package:khalti_clone_ui/Pages/support.dart';
import 'package:khalti_clone_ui/Pages/transactions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;
  final List<Widget> screens = [
    const Dashboard(),
    const Menu(),
    const ScanAndPay(),
    const Support(),
    const Transactions(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      


      //this is for middle one (qr code )
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentScreen = const ScanAndPay();
            currentTab = 3;
          });
          
        },
        child: const Icon(Icons.qr_code),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Dashboard();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: currentTab == 0 ? Colors.purple : Colors.grey,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                            color: currentTab == 0 ? Colors.purple : Colors.grey,
                          
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Support();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.phone_in_talk,
                          color: currentTab == 1 ? Colors.purple : Colors.grey,
                        ),
                        Text(
                          "Support",
                          style: TextStyle(
                            color: currentTab == 1 ? Colors.purple : Colors.grey,
                          
                          ),
                        )
                      ],
                    ),
                  ),
                  
                ],
              ),
              

              //Right tabbar icon
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Transactions();
                        currentTab = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.list_alt,
                          color: currentTab == 4 ? Colors.purple : Colors.grey,
                        ),
                        Text(
                          "Transactions",
                          style: TextStyle(
                            color: currentTab == 4 ? Colors.purple : Colors.grey,
                          
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Menu();
                        currentTab = 5;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.menu,
                          color: currentTab == 5 ? Colors.purple : Colors.grey,
                        ),
                        Text(
                          "Menu",
                          style: TextStyle(
                            color: currentTab == 5 ? Colors.purple : Colors.grey,
                          
                          ),
                        )
                      ],
                    ),
                  ),
                  
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
