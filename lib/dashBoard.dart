import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_wid_3/customWid/cardBox.dart';
import 'package:flutter_wid_3/customWid/smallBox.dart';

class MyDashBoard extends StatelessWidget {
  final String textBar;

  const MyDashBoard({super.key, required this.textBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(title: Text(textBar)),
        body: SingleChildScrollView(
          child: Column(
            children: [
              dashBox(
                  text1: "Total Revenue",
                  text2: "2,240,08 EGP",
                  icon: Icons.timeline,
                  color: Colors.blueAccent),
              Row(
                children: [
                  nonoBox(
                      icon: Icons.send,
                      color: Colors.orangeAccent,
                      text1: "Invoices",
                      text2: "74"),
                  nonoBox(
                      icon: Icons.people_alt_sharp,
                      color: Colors.grey.shade600,
                      text1: "Active Clint",
                      text2: "10")
                ],
              ),
              dashBox(
                  text1: "Average Invoice",
                  text2: "373,335,00 EGP",
                  icon: Icons.mail,
                  color: Colors.green.shade600),
              dashBox(
                  text1: "Out Standing",
                  text2: "0.0 GBP",
                  icon: Icons.access_time,
                  color: Colors.orange.shade700)
            ],
          ),
        ));
  }
}
