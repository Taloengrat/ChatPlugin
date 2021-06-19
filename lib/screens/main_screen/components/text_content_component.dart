import 'package:chat_plugin/models/chat_model.dart';
import 'package:flutter/material.dart';

class TextContentComponent extends StatefulWidget {
  final Chat chat;
  TextContentComponent({
    Key? key,
    required this.chat,
  }) : super(key: key);

  @override
  _TextContentComponentState createState() => _TextContentComponentState();
}

class _TextContentComponentState extends State<TextContentComponent> {
  bool isSelect = false;

  Future<void> _refresh() async {}

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 3),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: RefreshIndicator(
        onRefresh: () => _refresh(),
        child: Column(
          crossAxisAlignment: widget.chat.role == ROLE.SENDER
              ? CrossAxisAlignment.end
              : CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: widget.chat.role == ROLE.SENDER
                      ? Radius.circular(10)
                      : Radius.circular(0),
                  bottomRight: widget.chat.role == ROLE.SENDER
                      ? Radius.circular(0)
                      : Radius.circular(10),
                ),
                color: widget.chat.role == ROLE.SENDER
                    ? Colors.blue
                    : Colors.grey.shade300,
              ),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    isSelect = !isSelect;
                  });
                },
                child: Text(
                  widget.chat.content,
                  style: TextStyle(
                    color: widget.chat.role == ROLE.SENDER
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
            ),
            if (isSelect) Text(widget.chat.time),
          ],
        ),
      ),
    );
  }
}
