import 'package:chat_plugin/models/chat_model.dart';
import 'package:flutter/cupertino.dart';

class ChatsProvider extends ChangeNotifier {
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

  List<Chat> get item {
    return [..._item];
  }
}
