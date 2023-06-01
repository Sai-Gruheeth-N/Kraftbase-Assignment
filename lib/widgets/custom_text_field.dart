// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kraftbase/resources/app_colors.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final bool isPasswordField;
  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.isPasswordField,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _passwordVisible;
  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final FocusNode focusNode = FocusNode();

    InputBorder borderStyle() {
      return OutlineInputBorder(
        borderSide: const BorderSide(
          width: 0,
          color: AppColors.textFieldBGColor,
        ),
        borderRadius: BorderRadius.circular(10.0),
      );
    }

    InputDecoration textFieldDecoration = InputDecoration(
      label: Text(widget.labelText),
      labelStyle: GoogleFonts.readexPro(
        fontWeight: FontWeight.w400,
        color: AppColors.labelTextColor,
      ),
      focusedBorder: borderStyle(),
      enabledBorder: borderStyle(),
      filled: true,
      fillColor: AppColors.textFieldBGColor,
      suffixIcon: widget.isPasswordField
          ? Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                onPressed: () {
                  setState(
                    () {
                      _passwordVisible = !_passwordVisible;
                    },
                  );
                },
                icon: Icon(
                  _passwordVisible
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  size: 24.0,
                  color: AppColors.visibilityIconColor,
                ),
              ),
            )
          : null,
    );

    return TextField(
      focusNode: focusNode,
      obscureText: _passwordVisible,
      obscuringCharacter: '●',
      cursorColor: AppColors.labelTextColor,
      onTapOutside: (_) => focusNode.unfocus(),
      decoration: textFieldDecoration,
    );
  }
}
