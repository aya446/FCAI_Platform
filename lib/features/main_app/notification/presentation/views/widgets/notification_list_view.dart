import 'package:fcai_platform/features/main_app/notification/presentation/views/widgets/notification_item.dart';
import 'package:flutter/material.dart';

class NotificationListView extends StatelessWidget {
  const NotificationListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (context, index) {
        return NotificationItem();
      },
    );
  }
}
