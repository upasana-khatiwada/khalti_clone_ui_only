import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
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
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Row(
              children: const [
                CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage('image/upasana.jpg'),
                ),
                SizedBox(width: 10.0,),
                Text("Upasana",
                style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
