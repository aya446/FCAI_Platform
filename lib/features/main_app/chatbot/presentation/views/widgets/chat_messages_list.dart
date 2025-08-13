// import 'package:flutter/material.dart';
// import 'chat_response.dart';
// import 'chat_bubble.dart';
// import 'suggestions.dart';
// import 'typing_inidcator.dart';

// class ChatMessagesList extends StatelessWidget {
//   final List<Map<String, dynamic>> messages;
//   final bool isTyping;
//   final bool showSuggestions;

//   const ChatMessagesList({
//     super.key,
//     required this.messages,
//     required this.isTyping,
//     required this.showSuggestions,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       reverse: true,
//       itemCount: messages.length + (isTyping ? 1 : 0),
//       itemBuilder: (context, index) {
//         if (isTyping && index == 0) {
//           return const Padding(
//             padding: EdgeInsets.symmetric(vertical: 8.0),
//             child: Align(
//               alignment: Alignment.centerLeft,
//               child: TypingIndicatorWidget(),
//             ),
//           );
//         }

//         final msgIndex = isTyping ? index - 1 : index;
//         final msg = messages[msgIndex];

//         return Column(
//           children: [
//             msg['sender'] == 'user'
//                 ? ChatBubble(message: msg['message'])
//                 : ChatResponse(
//                     message: msg['message'],
//                     isBot: msg['type'] == 'error',
//                   ),
//             if (showSuggestions && msgIndex == 0)
//               const Align(
//                 alignment: Alignment.center,
//                 child: Suggestions(),
//               ),
//           ],
//         );
//       },
//     );
//   }
// }
