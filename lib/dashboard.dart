import 'package:flutter/material.dart';

import 'my_app_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SingleChildScrollView(
        child: Column(children:const  [
           MyAppBar(),

        ]),
      ),
      
      
    );
  }
}
