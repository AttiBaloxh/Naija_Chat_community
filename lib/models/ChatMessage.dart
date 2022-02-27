enum ChatMessageType { text, audio, image, video }

class ChatMessage {
  final String? text;
  final ChatMessageType messageType;

  final bool isSender;

  ChatMessage({
    this.text,
    required this.messageType,
    required this.isSender,
  });
}

List demeChatMessages = [
  ChatMessage(
    text: "Hi AppDeveloper,",
    messageType: ChatMessageType.text,
    isSender: false,
  ),
  ChatMessage(
    text: "HI Dude How are you?",
    messageType: ChatMessageType.text,
    isSender: true,
  ),
  ChatMessage(
    text: "",
    messageType: ChatMessageType.video,
    isSender: true,
  ),
  ChatMessage(
    text: "I am Greate Thanks",
    messageType: ChatMessageType.text,
    isSender: false,
  ),
  ChatMessage(
    text: "That's good.",
    messageType: ChatMessageType.text,
    isSender: false,
  ),
  ChatMessage(
    text: "I love Your Work",
    messageType: ChatMessageType.text,
    isSender: true,
  ),
];
