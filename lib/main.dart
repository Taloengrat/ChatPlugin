import 'package:chat_plugin/providers/chats_provider.dart';
import 'package:chat_plugin/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/chat_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  List<Chat> _item = [
    Chat(
        id: '1',
        name: 'sender name',
        content: 'hello1',
        time: DateTime.now().toString(),
        role: ROLE.SENDER),
    Chat(
        id: '2',
        name: 'sender name',
        content: 'hello2',
        time: DateTime.now().toString(),
        role: ROLE.SENDER),
    Chat(
      id: '3',
      name: 'receiver name',
      content: 'hello3',
      time: DateTime.now().toString(),
      role: ROLE.RECEIVER,
    ),
    Chat(
      id: '4',
      name: 'receiver name',
      content: 'hello4',
      time: DateTime.now().toString(),
      role: ROLE.RECEIVER,
    ),
    Chat(
      id: '5',
      name: 'sender name',
      content: 'hello5',
      time: DateTime.now().toString(),
      role: ROLE.SENDER,
    ),
    Chat(
        id: '1',
        name: 'sender name',
        content: 'hello6',
        time: DateTime.now().toString(),
        role: ROLE.SENDER),
    Chat(
        id: '2',
        name: 'sender name',
        content: 'hello7',
        time: DateTime.now().toString(),
        role: ROLE.SENDER),
    Chat(
      id: '3',
      name: 'receiver name',
      content: 'hello8',
      time: DateTime.now().toString(),
      role: ROLE.RECEIVER,
    ),
    Chat(
      id: '4',
      name: 'receiver name',
      content: 'hello9',
      time: DateTime.now().toString(),
      role: ROLE.RECEIVER,
    ),
    Chat(
      id: '5',
      name: 'sender name',
      content: 'hello10',
      time: DateTime.now().toString(),
      role: ROLE.SENDER,
    ),
    Chat(
        id: '1',
        name: 'sender name',
        content: 'hello11',
        time: DateTime.now().toString(),
        role: ROLE.SENDER),
    Chat(
        id: '2',
        name: 'sender name',
        content: 'hello12',
        time: DateTime.now().toString(),
        role: ROLE.SENDER),
    Chat(
      id: '3',
      name: 'receiver name',
      content: 'hello13',
      time: DateTime.now().toString(),
      role: ROLE.RECEIVER,
    ),
    Chat(
      id: '4',
      name: 'receiver name',
      content: 'hello14',
      time: DateTime.now().toString(),
      role: ROLE.RECEIVER,
    ),
    Chat(
      id: '5',
      name: 'sender name',
      content: 'hello15',
      time: DateTime.now().toString(),
      role: ROLE.SENDER,
    ),
    Chat(
        id: '1',
        name: 'sender name',
        content: 'hello16',
        time: DateTime.now().toString(),
        role: ROLE.SENDER),
    Chat(
        id: '2',
        name: 'sender name',
        content: 'hello17',
        time: DateTime.now().toString(),
        role: ROLE.SENDER),
    Chat(
      id: '3',
      name: 'receiver name',
      content: 'hello18',
      time: DateTime.now().toString(),
      role: ROLE.RECEIVER,
    ),
    Chat(
      id: '4',
      name: 'receiver name',
      content: 'hello19',
      time: DateTime.now().toString(),
      role: ROLE.RECEIVER,
    ),
    Chat(
      id: '5',
      name: 'sender name',
      content: 'hello20',
      time: DateTime.now().toString(),
      role: ROLE.SENDER,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: ChatScreen(
          chatLists: _item,
        ),
      ),
    );
  }
}
