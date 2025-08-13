import 'package:fcai_platform/core/utils/styles.dart';
import 'package:fcai_platform/features/main_app/notification/presentation/views/widgets/notification_list_view.dart';
import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Notification', style: Styles.BlueBold18),
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Expanded(child: NotificationListView()),
        ],
      ),
    );
  }
}
