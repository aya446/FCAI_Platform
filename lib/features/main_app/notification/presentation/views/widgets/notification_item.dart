import 'package:fcai_platform/core/utils/app_colors.dart';
import 'package:fcai_platform/core/utils/styles.dart';
import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * .9,
              height: MediaQuery.of(context).size.width * .15,
              color: Colors.transparent,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColors.primaryColor,
                    ),
                    child: Icon(
                      Icons.mail_outline_rounded,
                      color: Colors.white,
                      size: 19,
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 250,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.Blue12,
                        ),
                      ),
                      Text('11/4/2025', style: Styles.gray11),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Divider(color: Colors.grey.shade300),
          ],
        ),
      ),
    );
  }
}
