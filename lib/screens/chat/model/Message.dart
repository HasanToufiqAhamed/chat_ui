
class Message {
  String message;
  MessageType messageType;

  Message({
    required this.message,
    required this.messageType,
  });
}

enum MessageType{
  text, image,
}