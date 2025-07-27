import 'package:fcai_platform/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({super.key, required this.title, this.actionTitle});

  final String title;
  final String? actionTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Styles.BlueBold18),
        if (actionTitle != null)
          Row(
            children: [
              Text(actionTitle!, style: Styles.Blue12),
              SvgPicture.asset('assets/icons/arrow.svg'),
            ],
          ),
      ],
    );
  }
}
