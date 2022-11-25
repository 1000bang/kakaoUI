import 'package:flutter/material.dart';

class BottomIconButton extends StatelessWidget {
  const BottomIconButton({Key? key, required this.iconData, required this.text}) : super(key: key);
  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(iconData, color: Colors.white, size: 25,),
        SizedBox(height: 10,),
        Text(text, style: TextStyle(color: Colors.white, fontSize: 12),)
      ],
    );
  }
}
