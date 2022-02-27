import 'package:chat_app_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 32,
              color: Color(0xFF087949).withOpacity(0.1),
            )
          ]),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FaIcon(
              FontAwesomeIcons.video,
              size: 20,
              color: kPrimaryColor,
            ),
            SizedBox(width: kDefaultPadding),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding * 0.75,
                ),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                    SizedBox(width: kDefaultPadding / 4),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Type message",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(width: kDefaultPadding / 4),
                    FaIcon(
                      FontAwesomeIcons.camera,
                      size: 20,
                      color: kPrimaryColor,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: kDefaultPadding),
            Icon(
              Icons.send,
              color: kPrimaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
