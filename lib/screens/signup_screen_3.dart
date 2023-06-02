import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kraftbase/resources/app_colors.dart';
import 'package:kraftbase/screens/login_screen.dart';
import 'package:kraftbase/widgets/custom_text_field.dart';
import 'package:kraftbase/widgets/log_in_sign_up_widget.dart';

class SignUpScreenStep3 extends StatelessWidget {
  const SignUpScreenStep3({super.key});

  @override
  Widget build(BuildContext context) {
    return LogInSignUpWidget(
      child: Stack(
        children: [
          const SignUpModalStep3(),
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
    );
  }
}

class SignUpModalStep3 extends StatefulWidget {
  const SignUpModalStep3({
    super.key,
  });

  @override
  State<SignUpModalStep3> createState() => _SignUpModalStep3State();
}

class _SignUpModalStep3State extends State<SignUpModalStep3> {
  @override
  Widget build(BuildContext context) {
    InputBorder borderStyle = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 0,
        color: AppColors.textFieldBGColor,
      ),
      borderRadius: BorderRadius.circular(10.0),
    );

    InputDecoration inputDecoration(String labelText) {
      return InputDecoration(
        label: Text(labelText),
        labelStyle: GoogleFonts.readexPro(
          fontWeight: FontWeight.w400,
          color: AppColors.labelTextColor,
        ),
        focusedBorder: borderStyle,
        enabledBorder: borderStyle,
        filled: true,
        fillColor: AppColors.textFieldBGColor,
      );
    }

    return Container(
      margin: const EdgeInsets.only(
        top: 176.0,
        left: 20.0,
        right: 20.0,
      ),
      padding: const EdgeInsets.only(top: 60.0),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        // child: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 12.0,
              ),
              Text(
                "Signup with",
                style: GoogleFonts.readexPro(
                  fontWeight: FontWeight.w600,
                  fontSize: 26.0,
                ),
              ),
              const SizedBox(
                height: 3.0,
              ),
              const Text("Step 3 of 3"),
              const SizedBox(
                height: 24.0,
              ),
              const CustomTextField(
                labelText: 'Email Address',
                isPasswordField: false,
              ),
              const SizedBox(
                height: 8.0,
              ),
              const CustomTextField(
                labelText: 'Phone Number',
                isPasswordField: false,
              ),
              const SizedBox(
                height: 8.0,
              ),
              const CustomTextField(
                labelText: 'Password',
                isPasswordField: true,
              ),
              const SizedBox(height: 36),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                width: double.infinity,
                height: 52,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const Placeholder();
                        },
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.loginButtonBGColor,
                  ),
                  child: Text(
                    'Next',
                    style: GoogleFonts.readexPro(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "Having a trouble, we'll support you",
                style: GoogleFonts.readexPro(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: GoogleFonts.readexPro(
                      fontWeight: FontWeight.w300,
                      fontSize: 12.0,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const LoginScreen();
                          },
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      "Login",
                      style: GoogleFonts.readexPro(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        // ),
      ),
    );
  }
}