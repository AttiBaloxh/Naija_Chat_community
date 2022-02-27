import 'package:chat_app_ui/constants.dart';
import 'package:chat_app_ui/models/Chat.dart';
import 'package:chat_app_ui/screens/chats/components/chat_card.dart';
import 'package:chat_app_ui/screens/messages/message_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[200],
          ),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: kDefaultPadding),
              hintText: 'Search',
              border: InputBorder.none,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatData(
              chat: chatsData[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessageScreen(
                    chat: chatsData[index],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
