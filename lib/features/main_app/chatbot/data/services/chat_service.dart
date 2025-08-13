import 'package:google_generative_ai/google_generative_ai.dart';

class ChatService {
  final _model = GenerativeModel(
    model: 'gemini-1.5-flash',
    apiKey: 'AIzaSyAqhVNQE9qXVclkvHmqAnswM0vlHoqTHCw',
  );

  Future<String> getBotReply(String userMessage) async {
    final response = await _model.generateContent([Content.text(userMessage)]);
    return response.text ?? 'Please, try again!';
  }
}
