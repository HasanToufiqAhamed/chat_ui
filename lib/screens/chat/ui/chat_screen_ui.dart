import 'package:chat_ui/screens/chat/model/message.dart';
import 'package:chat_ui/screens/chat/ui/chat_appbar.dart';
import 'package:chat_ui/utilities/extensions/widget.extensions.dart';
import 'package:flutter/material.dart';

import 'chat_card.dart';

class ChatScreen extends StatefulWidget {
  static const routeName = "/chat-screen";

  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatAppBar(
        title: "Hello",
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
              itemCount: 21,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                // Map message = Map.from(controller.chatList[index]);
                Message message = Message(
                  message: 'Lorem Ipsum is simply dummy text of the printing.',
                  messageType: index % 4 == 0 && index != 0
                      ? MessageType.image
                      : MessageType.text,
                );
                return ChatCard(
                  message: message,
                  sender: index % 3 == 0,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  color: Color(0xFF524B6B),
                  disabledColor: Color(0xFFAAA6B9),
                  icon: const Icon(
                    Icons.attachment_rounded,
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      color: Colors.black12,
                    ),
                    child: TextFormField(
                      maxLines: 4,
                      minLines: 1,
                      onChanged: (v) {},
                      onTap: () async {},
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Write your massage',
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        hintStyle: TextStyle(
                          color: Color(0xFFAAA6B9),
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
                10.horizontalSpacing,
                InkWell(
                  onTap: () async {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: 100.circularRadius,
                      color: Color(0xFF0099CC),
                    ),
                    padding: const EdgeInsets.all(
                      12,
                    ),
                    child: const Icon(
                      Icons.send_rounded,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ),
                10.horizontalSpacing,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
