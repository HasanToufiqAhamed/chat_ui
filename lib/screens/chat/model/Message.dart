
class Message {
  String message;
  DateTime timestamp;
  MessageType messageType;
  String senderId;
  String image;

  Message({
    required this.message,
    required this.timestamp,
    required this.messageType,
    required this.senderId,
    this.image = '',
  });
}

enum MessageType{
  text, image,
}