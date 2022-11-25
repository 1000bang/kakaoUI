import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/bottom_icon_button.dart';
import '../components/round_icon_button.dart';
import '../models/User.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(user.backgroundImg), fit: BoxFit.fitHeight),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              FontAwesomeIcons.times,
              size: 30,
              color: Colors.white,
            ),
          ),
          actions: [
            RoundIconButton(icon: FontAwesomeIcons.gift),
            SizedBox(
              width: 15,
            ),
            RoundIconButton(icon: FontAwesomeIcons.cog),
            SizedBox(
              width: 15,
            ),
          ],
        ),
        body: Column(
          children: [
            Spacer(),
            Container(
              width: 110,
              height: 110,
              decoration: (BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(user.backgroundImg),
                      fit: BoxFit.cover))),
            ),
            Text(
              user.name,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(height: 5),
            Text(
              user.intro,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20),
            Divider(color: Colors.white, indent: 0.5, endIndent: 0.5),
            if (user.name == me.name) _buildMyIcons() else _buildFriendsIcons(),
          ],
        ),
      ),
    );
  } //end widget

  Widget _buildMyIcons() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BottomIconButton(iconData: FontAwesomeIcons.comment, text: "나와의 채팅"),
          SizedBox(
            width: 50,
          ),
          BottomIconButton(iconData: FontAwesomeIcons.pencil, text: "프로필 편집"),
        ],
      ),
    );
  }

  Widget _buildFriendsIcons() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BottomIconButton(iconData: FontAwesomeIcons.comment, text: "1:1 채팅"),
          SizedBox(
            width: 50,
          ),
          BottomIconButton(iconData: FontAwesomeIcons.phone, text: "통화하기"),
        ],
      ),
    );
  }
}
