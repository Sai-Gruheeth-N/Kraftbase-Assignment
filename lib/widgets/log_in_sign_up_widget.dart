import 'package:flutter/material.dart';

class LogInSignUpWidget extends StatelessWidget {
  final Widget child;
  const LogInSignUpWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
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
      ),
    );
  }
}
