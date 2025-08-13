class ChatModel {
  final String sender;
  final String message;
  final bool isError;
  final bool showSuggestions;

  ChatModel({
    required this.sender,
    required this.message,
    this.isError = false,
    this.showSuggestions = false,
  });
}
