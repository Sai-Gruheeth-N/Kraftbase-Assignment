import 'package:flutter/material.dart';

class LogInSignUpWidget extends StatelessWidget {
  Widget child;
  LogInSignUpWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/Login-bg.png"),
            fit: BoxFit.fill,
          ),
          gradient: RadialGradient(
            colors: [
              Color.fromARGB(255, 74, 40, 156),
              Color.fromARGB(255, 0, 9, 43),
            ],
          ),
        ),
        child: child,
      ),
    );
  }
}
