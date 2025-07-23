import 'package:fcai_platform/features/authentication/data/models/text_field_model.dart';
import 'package:fcai_platform/features/authentication/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class RegistrationListView extends StatelessWidget {
  const RegistrationListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<TextFieldModel> formList = [
      TextFieldModel(
        prefixIcon: 'assets/icons/user2.svg',
        hintText: 'Full Name',
        onChange: (p0) {},
      ),
      TextFieldModel(
        prefixIcon: 'assets/icons/ID.svg',
        hintText: 'ID',
        onChange: (p0) {},
      ),
      TextFieldModel(
        prefixIcon: 'assets/icons/email.svg',
        hintText: 'User@bsu.ed.eg.com',
        onChange: (p0) {},
      ),
      TextFieldModel(
        prefixIcon: 'assets/icons/password.svg',
        hintText: '*************',
        suffixIcon: 'assets/icons/show_password.svg',
        onChange: (p0) {},
      ),
    ];
    return ListView.builder(
      itemCount: formList.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 35.0),
          child: CustomTextField(textFieldModel: formList[index]),
        );
      },
    );
  }
}
