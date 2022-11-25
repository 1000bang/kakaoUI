import 'package:flutter/material.dart';
import 'package:kakao_02/components/chat_card.dart';
import 'package:kakao_02/models/chat.dart';
class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("채팅"),
      ),
   body: ListView(
     children:
       List.generate(chats.length, (index) => ChatCard(chat: chats[index])),

   ),
    );
  }
}