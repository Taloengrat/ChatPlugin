class Chat {
  String id;
  String name;
  String content;
  String time;
  ROLE role;

  Chat({
    required this.id,
    required this.name,
    required this.content,
    required this.time,
    required this.role,
  });
}

enum ROLE {
  SENDER,
  RECEIVER,
}
