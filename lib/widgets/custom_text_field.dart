// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kraftbase/resources/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final focusNode = FocusNode();
    return TextField(
      focusNode: focusNode,
      obscureText: obscureText,
      obscuringCharacter: '●',
      cursorColor: AppColors.labelTextColor,
      onTapOutside: (_) => focusNode.unfocus(),
      decoration: InputDecoration(
        label: Text(labelText),
        labelStyle: GoogleFonts.readexPro(
          fontWeight: FontWeight.w400,
          color: AppColors.labelTextColor,
        ),
        focusedBorder: borderStyle(),
        enabledBorder: borderStyle(),
        filled: true,
        fillColor: AppColors.textFieldBGColor,
      ),
    );
  }
}

InputBorder borderStyle() {
  return OutlineInputBorder(
    borderSide: const BorderSide(
      width: 0,
      color: AppColors.textFieldBGColor,
    ),
    borderRadius: BorderRadius.circular(10.0),
  );
}
