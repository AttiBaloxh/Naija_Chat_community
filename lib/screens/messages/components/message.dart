import 'package:chat_app_ui/constants.dart';
import 'package:chat_app_ui/models/Chat.dart';
import 'package:chat_app_ui/models/ChatMessage.dart';
import 'package:chat_app_ui/screens/messages/components/audio.message.dart';
import 'package:chat_app_ui/screens/messages/components/text_message.dart';
import 'package:chat_app_ui/screens/messages/components/video_message.dart';
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({
    Key? key,
    required this.message,
    required this.chat,
  }) : super(key: key);

  final ChatMessage message;
  final Chat chat;

  @override
  Widget build(BuildContext context) {
    Widget messageContaint(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);
        case ChatMessageType.audio:
          return AudioMessage(message: message);
        case ChatMessageType.video:
          return VideoMessage();
        default:
          return SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 1.8),
      child: Row(
        mainAxisAlignment:
            message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...{
            CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage(chat.image),
            ),
            SizedBox(width: kDefaultPadding / 2),
          },
          messageContaint(message),
        ],
      ),
    );
  }
}
