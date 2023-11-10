import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class dashBox extends StatelessWidget {
  final String text1;
  final String text2;
  final IconData icon;
  final Color color;
  dashBox(
      {required this.text1,
      required this.text2,
      required this.icon,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(10),
      color: Colors.white,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                ),
                Text(
                  text2,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                )
              ],
            ),
            CircleAvatar(
              radius: 40,
              backgroundColor: color,
              child: Icon(
                icon,
                size: 40,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
