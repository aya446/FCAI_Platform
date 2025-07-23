import 'package:fcai_platform/core/utils/app_routes.dart';
import 'package:fcai_platform/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class DepartmentItem extends StatelessWidget {
  const DepartmentItem({super.key, required this.departmentName});
  final String departmentName;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return Column(
      children: [
        SvgPicture.asset(
          'assets/icons/user.svg',
          width: size.width * .14,
          height: size.width * .167,
        ),
        SizedBox(height: 12),
        GestureDetector(
          onTap: () {
            context.go(AppRoutes.login);
          },
          child: Container(
            width: size.width * .19,
            height: size.height * .033,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Center(child: Text(departmentName, style: Styles.Blue14)),
            ),
          ),
        ),
      ],
    );
  }
}
