import 'package:flutter/material.dart';

import 'Pages/home.dart';

void main() {
  runApp(const KhaltiApp());
}


class KhaltiApp extends StatefulWidget {
   const KhaltiApp({Key? key}) : super(key: key);

  @override
  State<KhaltiApp> createState() => _KhaltiAppState();
}

class _KhaltiAppState extends State<KhaltiApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple,
      visualDensity: VisualDensity.adaptivePlatformDensity),
      home:  const  HomePage(),
      
    );
  }
}