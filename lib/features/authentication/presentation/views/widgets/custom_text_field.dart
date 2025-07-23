import 'package:fcai_platform/core/utils/app_colors.dart';
import 'package:fcai_platform/core/utils/styles.dart';
import 'package:fcai_platform/features/authentication/data/models/text_field_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.textFieldModel});

  final TextFieldModel textFieldModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextFormField(
        onChanged: textFieldModel.onChange,
        cursorColor: Colors.black,
        style: Styles.Blue14,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.whiteWithOpacity,
          hintText: textFieldModel.hintText,
          hintStyle: Styles.gray13,
          prefixIcon: Container(
            padding: const EdgeInsets.all(12),
            width: 20,
            height: 20,
            child: SvgPicture.asset(
              textFieldModel.prefixIcon,
              color: const Color(0xFF787878),
              fit: BoxFit.contain,
            ),
          ),
          suffixIcon: textFieldModel.suffixIcon != null
              ? Container(
                  padding: const EdgeInsets.all(12),
                  width: 20,
                  height: 20,
                  child: SvgPicture.asset(
                    textFieldModel.suffixIcon!,
                    color: const Color(0xFF787878),
                    fit: BoxFit.contain,
                  ),
                )
              : null,
          enabledBorder: OutlineInputBoarder(),
          focusedBorder: OutlineInputBoarder(),
          border: OutlineInputBoarder(),
        ),
      ),
    );
  }

  OutlineInputBorder OutlineInputBoarder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: const BorderSide(color: Colors.transparent),
    );
  }
}
