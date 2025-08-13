import 'package:fcai_platform/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SuggestionItem extends StatelessWidget {
  const SuggestionItem({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
  });
  final String text;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
        child: Row(
          children: [
            Text(text, style: Styles.Blue12),
            SizedBox(width: 5),
            Icon(icon, color: color, size: 20),
          ],
        ),
      ),
    );
  }
}
