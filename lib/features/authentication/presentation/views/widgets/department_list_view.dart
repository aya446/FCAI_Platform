import 'package:fcai_platform/features/authentication/presentation/views/widgets/department_item.dart';
import 'package:flutter/material.dart';

class DepartmentListView extends StatelessWidget {
  const DepartmentListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> dapartmentList = ['Doctor', 'Student', 'Admin'];
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: dapartmentList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: DepartmentItem(departmentName: dapartmentList[index]),
        );
      },
    );
  }
}
