import 'package:fcai_platform/core/utils/styles.dart';
import 'package:fcai_platform/features/authentication/presentation/views/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DepartmentItem extends StatelessWidget {
  const DepartmentItem({super.key, required this.departmentName});
  final String departmentName;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return Column(
      children: [
        SvgPicture.asset('assets/icons/user.svg', width: size.width * .14),
        SizedBox(height: 12),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return LoginPage();
                },
              ),
            );
          },
          child: Container(
            width: size.width * .19,
            height: size.height * .03,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Center(child: Text(departmentName, style: Styles.Blue14)),
            ),
          ),
        ),
      ],
    );
  }
}
