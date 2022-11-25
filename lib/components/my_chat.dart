import 'package:flutter/material.dart';

class Mychat extends StatelessWidget {
  const Mychat({Key? key, required this.time, required this.text}) : super(key: key);

  final String time;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
  children: [
      Text(time, style: TextStyle(fontSize: 12),),
    SizedBox(width: 5),
      Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: Colors.yellow
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(text ),
          )),
  ],
      ),
    );
  }
}
