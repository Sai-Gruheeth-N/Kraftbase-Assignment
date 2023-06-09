import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kraftbase/resources/app_colors.dart';
import 'package:kraftbase/screens/login-signup/signup_screen_1.dart';
import 'package:kraftbase/widgets/custom_text_field.dart';
import 'package:kraftbase/widgets/log_in_sign_up_bg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const LogInSignUpBG(child: LoginModal());
  }
}

class LoginModal extends StatelessWidget {
  const LoginModal({
    super.key,
  });

  // String email;
  // String password;
  @override
  Widget build(BuildContext context) {
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 12.0,
              ),
              Text(
                "Login with",
                style: GoogleFonts.readexPro(
                  fontWeight: FontWeight.w600,
                  fontSize: 26.0,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const CustomTextField(
                labelText: 'Email Address',
                isPasswordField: false,
              ),
              const SizedBox(
                height: 16.0,
              ),
              const CustomTextField(
                labelText: 'Password',
                isPasswordField: true,
              ),
              const SizedBox(height: 32),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                width: double.infinity,
                height: 52,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.loginButtonBGColor,
                  ),
                  child: Text(
                    'Login',
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
                    "Don't have an account?",
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
                            return const SignUpScreenStep1();
                          },
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      "Sign Up",
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
      ),
    );
  }
}
