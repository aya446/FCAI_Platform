class TextFieldModel {
  final String prefixIcon;
  final String hintText;
  final String? suffixIcon;
  final Function(String)? onChange;

  TextFieldModel({
    required this.prefixIcon,
    required this.hintText,
    this.suffixIcon,
    required this.onChange,
  });
}
