import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kraftbase/resources/app_colors.dart';
import 'package:kraftbase/screens/login-signup/signup_screen_3.dart';
import 'package:kraftbase/widgets/custom_text_field.dart';
import 'package:kraftbase/widgets/log_in_sign_up_bg.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class SignUpScreenStep2 extends StatelessWidget {
  const SignUpScreenStep2({super.key});

  @override
  Widget build(BuildContext context) {
    return const LogInSignUpBG(
      child: SignUpModalStep2(),
    );
  }
}

class SignUpModalStep2 extends StatelessWidget {
  const SignUpModalStep2({
    super.key,
  });

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
                height: 4.0,
              ),
              const Text("Step 2 of 3"),
              const SizedBox(
                height: 8.0,
              ),
              const StepProgressIndicator(
                totalSteps: 3,
                currentStep: 2,
                selectedColor: Color.fromARGB(255, 60, 199, 66),
                unselectedColor: Color.fromARGB(255, 217, 217, 217),
                padding: 0,
                size: 2,
              ),
              const SizedBox(
                height: 16.0,
              ),
              const CustomTextField(
                labelText: 'School Name',
                isPasswordField: false,
              ),
              const SizedBox(
                height: 8.0,
              ),
              const CustomTextField(
                labelText: 'Location',
                isPasswordField: false,
              ),
              const SizedBox(height: 164),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                width: double.infinity,
                height: 52,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const SignUpScreenStep3();
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
              Padding(
                padding: const EdgeInsets.only(bottom: 14.0),
                child: Text(
                  "Having a trouble, we'll support you",
                  style: GoogleFonts.readexPro(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        // ),
      ),
    );
  }
}
