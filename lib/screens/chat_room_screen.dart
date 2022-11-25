import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:kakao_02/components/message_card.dart';
import 'package:kakao_02/components/my_chat.dart';
import 'package:kakao_02/components/other_chat.dart';
import 'package:kakao_02/components/time_line.dart';
import 'package:kakao_02/models/User.dart';

import '../components/chat_icon_button.dart';

class ChatRoomScreen extends StatefulWidget {
  const ChatRoomScreen({Key? key}) : super(key: key);


  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  List<Mychat> chats = [];
  TextEditingController _textEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffb2c7da),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("홍길동", style: Theme
              .of(context)
              .textTheme
              .headline6,),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search, size: 20,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(FontAwesomeIcons.bars, size: 20),
            ),

          ],
        ),
        body:Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      TimeLine(time: "2022년 11월 24일 목요일",),
                      SizedBox(height: 20,),
                      OtherChat(name: "홍길동", text: "오늘 저녁에 한국 축구해요?", time: "오전 09시 30분"),
                      Mychat(time: "오전 11시 10분", text: "응 10시"),
                      ...List.generate(chats.length, (index) => chats[index]),
                      // MessageCard(text: "새해복"),
                    ],
                  ),
                ),
              ),
            ),

            // 글자입력받는 위젯 여기!!!!!!!!!!!!!!!!!!!!!!!!!
          Container(
            height: 60,
            color: Colors.white,
            child: Row(
              children: [
                ChatIconButton(icon: Icon(FontAwesomeIcons.squarePlus)),
                Expanded(child: Container(
                  child: TextField(
                    controller: _textEditingController,
                    onSubmitted: (value) {
                      _handleSubmitted(value);

                    },
                    style: TextStyle(fontSize: 17),
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                  ),
                )),
                ChatIconButton(icon: Icon(FontAwesomeIcons.smile)),
                ChatIconButton(icon: Icon(FontAwesomeIcons.hashtag)),
              ],
            ),

          ),


        ]),
      ),
    );
  }

void _handleSubmitted(mText){


    setState(() {
      chats.add(Mychat(time:
      DateFormat("a K:m").format(new DateTime.now()).replaceAll("AM", "오전")
          .replaceAll("PM", "오후"),
          text: mText));
    });
    _textEditingController.clear();
}

}
