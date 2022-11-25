import 'package:flutter/material.dart';

import '../models/User.dart';
class MessageCard extends StatefulWidget {
  const MessageCard({Key? key, required text}) : super(key: key);

  @override
  State<MessageCard> createState() => _MessageCardState();
}

late final String text;

class _MessageCardState extends State<MessageCard> {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(backgroundImage: NetworkImage(
          friends[0].backgroundImg,
        ),
        radius: 20,
        ),
        Column(
          children: [
            Text("홍길동"),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xff9cafbe),
              ),
              child: Text(text, style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
        Text(DateTime.now().hour.toString()),
      ],
    );
  }
}
