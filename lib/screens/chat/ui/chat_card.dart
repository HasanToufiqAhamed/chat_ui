import 'package:chat_ui/data/constants/app_colors.dart';
import 'package:chat_ui/data/constants/app_dimens.dart';
import 'package:chat_ui/utilities/extensions/widget.extensions.dart';
import 'package:flutter/material.dart';

import '../model/Message.dart';

class ChatCard extends StatelessWidget {
  final Message message;
  final bool sender;

  ChatCard({
    required this.message,
    required this.sender,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    if (sender) {
      if (message.messageType == MessageType.text) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                  ),
                  color: AppColors.primaryColor,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDimens.chatTextCardHorizontalPadding,
                  vertical: AppDimens.chatTextCardVerticalPadding,
                ),
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 3),
                child: Text(
                  message.message,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '2 pm',
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: Color(0xFFAAA6B9),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      } else {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                  color: AppColors.primaryColor,
                ),
                padding: const EdgeInsets.all(2),
                margin: EdgeInsets.only(left: size.width / 3),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                    color: Colors.white,
                  ),
                  child: ClipRRect(
                    borderRadius: 25.circularRadius,
                    child: FlutterLogo(
                      size: size.width / 2,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '3 pm',
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: Color(0xFFAAA6B9),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }
    }
    if (message.messageType == MessageType.text) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                color: Color(0xFF05B016).withOpacity(0.1),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.chatTextCardHorizontalPadding,
                vertical: AppDimens.chatTextCardVerticalPadding,
              ),
              margin: EdgeInsets.only(right: size.width / 3),
              child: Text(
                message.message,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: Color(0xFF524B6B),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Text(
                '4 pm',
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  color: Color(0xFFAAA6B9),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(25),
              ),
              color: Color(0xFF05B016).withOpacity(0.1),
            ),
            padding: const EdgeInsets.all(2),
            margin: EdgeInsets.only(right: size.width / 3),
            child: ClipRRect(
              borderRadius: 25.circularRadius,
              child: FlutterLogo(
                size: size.width / 2,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: Text(
              '5 pm',
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 10,
                color: Color(0xFFAAA6B9),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
