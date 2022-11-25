import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tap{

  final IconData iconData;
  final String text;

  Tap({required this.iconData, required this.text});


}

List<Tap> taps = [
  Tap(iconData: FontAwesomeIcons.envelope, text: "메일"),
  Tap(iconData: FontAwesomeIcons.calendarDay, text: "캘린더"),
  Tap(iconData: FontAwesomeIcons.archive, text: "서랍"),
  Tap(iconData: FontAwesomeIcons.gift, text: "선물하기"),
  Tap(iconData: FontAwesomeIcons.laugh, text: "이모티콘"),
  Tap(iconData: FontAwesomeIcons.shopify, text: "쇼핑하기"),
  Tap(iconData: FontAwesomeIcons.tshirt, text: "스타일"),

];
