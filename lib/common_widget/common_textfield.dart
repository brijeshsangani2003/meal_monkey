import 'package:flutter/material.dart';

class common_textformfield extends StatelessWidget {
  final String? hintText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final int? maxlength;

  const common_textformfield(
      {super.key,
      this.hintText,
      this.keyboardType,
      this.validator,
      this.maxlength,
      required});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      keyboardType: keyboardType,
      maxLength: maxlength,
      decoration: InputDecoration(
        counterText: "",
        hintText: hintText,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w400,
          color: Colors.grey.shade400,
        ),
        fillColor: Colors.grey.shade200,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(40),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(40),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(40),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}
