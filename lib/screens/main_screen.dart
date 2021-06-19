import 'dart:ui';

import 'package:chat_plugin/models/chat_model.dart';
import 'package:chat_plugin/screens/main_screen/components/text_content_component.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final List<Chat> chatLists;
  ChatScreen({Key? key, required this.chatLists}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool isSelect = false;

  Future<void> _refresh() async {}

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      child: Card(
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  child: RefreshIndicator(
                    onRefresh: () => _refresh(),
                    child: ListView.builder(
                      itemCount: widget.chatLists.length,
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment:
                              widget.chatLists.elementAt(index).role ==
                                      ROLE.SENDER
                                  ? MainAxisAlignment.end
                                  : MainAxisAlignment.start,
                          children: [
                            TextContentComponent(
                              chat: widget.chatLists.elementAt(index),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: IconButton(
                    icon: Icon(
                      Icons.add,
                    ),
                    onPressed: () {},
                  )),
                  Expanded(
                    flex: 5,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        hintText: 'message',
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.sentiment_satisfied_alt_rounded),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.send),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
