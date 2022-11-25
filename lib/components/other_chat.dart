import 'package:flutter/material.dart';

import '../models/User.dart';

class OtherChat extends StatelessWidget {
  const OtherChat({
    Key? key,
    required this.name,
    required this.text,
    required this.time,
  }) : super(key: key);

  final String name;
  final String text;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              friends[0].backgroundImg,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name),  // 이름
              SizedBox(height: 5),
              Row(
                children: [Container(
                  padding: EdgeInsets.all(8),
                  child: Text(text),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white
                  ),
                ),
              const SizedBox(width: 8),
    Text(time, style: TextStyle(fontSize: 12),)
              ]), // 글 내용
            ],
          ),
         ],
      ),
    );
  }
}