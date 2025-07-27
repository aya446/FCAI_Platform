import 'package:fcai_platform/core/utils/app_colors.dart';
import 'package:fcai_platform/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchBarwidget extends StatelessWidget {
  const SearchBarwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: SearchBar(
        backgroundColor: WidgetStateProperty.all(AppColors.secondColor),

        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
        elevation: WidgetStateProperty.all(0),
        leading: const Icon(Icons.search, color: Colors.grey),
        hintText: 'Search',
        hintStyle: WidgetStateProperty.all(Styles.gray13),
        textStyle: WidgetStateProperty.all(Styles.Blue14),
      ),
    );
  }
}
