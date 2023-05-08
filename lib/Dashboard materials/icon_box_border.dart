import 'package:flutter/material.dart';

class BoxIconBorder extends StatelessWidget {
  final  String iconName;
  final  String iconImage;
  const BoxIconBorder(
      {super.key, required this.iconName, required this.iconImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsetsDirectional.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.blue.shade200, width: 1.5),
              ),
              child: SizedBox(
                height: 55,
                width: 75,
                child: Image.asset(
                  iconImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3.5, bottom: 8),
              child: Text(iconName,style: const TextStyle(color: Color.fromARGB(255, 64, 63, 63)),),
            ),
          ],
        ),
      ),
    );
  }
}
