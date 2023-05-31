// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LogInSignUpWidget extends StatelessWidget {
  Widget child;
  LogInSignUpWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/Login-bg.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: child,
    );
  }
}
