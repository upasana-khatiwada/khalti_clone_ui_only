import 'package:flutter/material.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({super.key});

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "Send Money",
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
               ListTile(
                leading:  Icon(Icons.send_to_mobile_rounded,color: Colors.purple.shade900,),
                title: const Text("Send to Khalti User",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                subtitle: const Text("Transfer money to Khalti Friends"),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.purple.shade900,),
                
              ),
               ListTile(
                leading:  Icon(Icons.assured_workload_rounded,color: Colors.purple.shade900,),
                title: const Text("Send to any Bank Account ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                subtitle: const Text("Transfer money to banks in Nepal"),
                trailing:  Icon(Icons.arrow_forward_ios,color: Colors.purple.shade900,),
                
              ),
              ListTile(
                leading:  Icon(Icons.corporate_fare_sharp,color: Colors.purple.shade900,),
                title: const Text("Send to any Bank Account ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                subtitle: const Text("Transfer money to Sahakari banks"),
                trailing:  Icon(Icons.arrow_forward_ios,color: Colors.purple.shade900,),
                
              ),
              



          ],
        ),),
      ),
    );
  }
}