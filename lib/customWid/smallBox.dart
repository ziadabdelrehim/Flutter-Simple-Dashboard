import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class nonoBox extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text1;
  final String text2;
  nonoBox(
      {required this.icon,
      required this.color,
      required this.text1,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          margin: EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: this.color,
                    radius: 35,
                    child: Icon(this.icon, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.text1,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                  Text(this.text2,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600))
                ],
              ),
            ]),
          )),
    );
  }
}
