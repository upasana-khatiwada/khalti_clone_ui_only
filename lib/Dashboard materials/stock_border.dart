import 'package:flutter/material.dart';

class StockBorder extends StatelessWidget {
  final String iconName;
  final String iconNum;
  const StockBorder({super.key, required this.iconNum, required this.iconName});

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
              child: Column(
                children: [
                  const Text(
                    " Broker No",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 55,
                    width: 55,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.purple.shade50),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            iconNum,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.purple.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3.5, bottom: 8),
              child: Text(
                iconName,
                style: const TextStyle(color: Color.fromARGB(255, 64, 63, 63)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
