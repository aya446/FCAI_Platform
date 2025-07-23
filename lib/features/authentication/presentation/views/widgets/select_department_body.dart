import 'package:fcai_platform/core/utils/styles.dart';
import 'package:fcai_platform/features/authentication/presentation/views/widgets/department_list_view.dart';
import 'package:flutter/material.dart';

class SelectDepartmentBody extends StatelessWidget {
  const SelectDepartmentBody({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: size.width * .8,
          child: Text(
            'Welcome to Faculty of Computer and artificial intelligence ',
            style: Styles.white16,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 70),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Which department ', style: Styles.white18),
            Text('YOU ', style: Styles.yellow18),
            Text('are ?', style: Styles.white18),
          ],
        ),
        SizedBox(height: 15),
        SizedBox(
          height: size.height * .2,
          width: size.width * 0.7,
          child: const DepartmentListView(),
        ),
      ],
    );
  }
}
