import 'package:flutter/material.dart';
import 'package:kraftbase/resources/app_colors.dart';

class LogInSignUpBG extends StatelessWidget {
  final Widget child;
  const LogInSignUpBG({
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
          child: Stack(
            children: [
              child,
              Positioned(
                top: MediaQuery.of(context).size.height * 0.145,
                left: 0,
                right: 0,
                child: CircleAvatar(
                  backgroundColor: AppColors.whiteColor,
                  radius: 60.0,
                  child: Image.asset(
                    "images/Planet.png",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
