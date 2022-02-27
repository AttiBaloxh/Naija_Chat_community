import 'package:chat_app_ui/constants.dart';
import 'package:chat_app_ui/models/ChatMessage.dart';
import 'package:flutter/material.dart';

class AudioMessage extends StatelessWidget {
  const AudioMessage({Key? key, required this.message}) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding),
      width: MediaQuery.of(context).size.width * 0.55,
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding * 0.75,
        vertical: kDefaultPadding / 2.5,
      ),
      decoration: BoxDecoration(
        borderRadius: message.isSender
            ? BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              )
            : BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
        color: kPrimaryColor.withOpacity(message.isSender ? 1 : 0.1),
      ),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: message.isSender ? Colors.white : kPrimaryColor,
          ),
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 2,
                  color: message.isSender
                      ? Colors.white
                      : kPrimaryColor.withOpacity(0.4),
                ),
                Positioned(
                  left: 0,
                  child: Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      color: message.isSender ? Colors.white : kPrimaryColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: kDefaultPadding * 0.25),
          Text(
            "0.37",
            style: TextStyle(
                fontSize: 12, color: message.isSender ? Colors.white : null),
          )
        ],
      ),
    );
  }
}
