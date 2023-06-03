import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kraftbase/resources/app_colors.dart';
import 'package:kraftbase/screens/signup_screen_2.dart';
import 'package:kraftbase/widgets/custom_text_field.dart';
import 'package:kraftbase/widgets/log_in_sign_up_bg.dart';
import 'package:intl/intl.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class SignUpScreenStep1 extends StatelessWidget {
  const SignUpScreenStep1({super.key});

  @override
  Widget build(BuildContext context) {
    return LogInSignUpBG(
      child: Stack(
        children: [
          const SignUpModalStep1(),
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

class SignUpModalStep1 extends StatefulWidget {
  const SignUpModalStep1({
    super.key,
  });

  @override
  State<SignUpModalStep1> createState() => _SignUpModalStep1State();
}

class _SignUpModalStep1State extends State<SignUpModalStep1> {
  bool _isDateSelected = false;
  List<String> genderList = ["Male", "Female", "Prefer not to say"];
  List<String> classList = [
    "Classes 8th STD",
    "Classes 9th STD",
    "Classes 10th STD",
  ];

  DateTime _dateTime = DateTime.now();

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

    void _showDatePicker() {
      setState(() {
        _isDateSelected = true;
      });
      showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1990),
        lastDate: DateTime(2050),
      ).then((value) {
        setState(() {
          _dateTime = value ?? _dateTime;
        });
      });
    }

    Widget dobWidget() {
      return Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: AppColors.textFieldBGColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: InputDecorator(
          decoration:
              _isDateSelected ? inputDecoration('DOB') : inputDecoration(''),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _isDateSelected
                  ? Text(
                      DateFormat('d MMMM, yyyy').format(_dateTime),
                    )
                  : Text(
                      'DOB',
                      style: GoogleFonts.readexPro(
                        fontWeight: FontWeight.w400,
                        color: AppColors.labelTextColor,
                      ),
                    ),
              Container(
                height: 20,
                width: 20,
                margin: const EdgeInsets.only(right: 4.0),
                child: GestureDetector(
                  onTap: _showDatePicker,
                  child: const Icon(
                    Icons.keyboard_arrow_down,
                    size: 23,
                    color: AppColors.labelTextColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget dropdownButtonFormField(String labelText, List<String> list) {
      return DropdownButtonFormField(
        decoration: inputDecoration(labelText),
        icon: const Icon(Icons.keyboard_arrow_down),
        items: list.map<DropdownMenuItem<String>>((String val) {
          return DropdownMenuItem<String>(
            value: val,
            child: Text(val),
          );
        }).toList(),
        onChanged: (_) {},
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
                height: 4.0,
              ),
              const Text("Step 1 of 3"),
              const SizedBox(
                height: 8.0,
              ),
              const StepProgressIndicator(
                totalSteps: 3,
                currentStep: 1,
                selectedColor: Color.fromARGB(255, 60, 199, 66),
                unselectedColor: Color.fromARGB(255, 217, 217, 217),
                padding: 0,
                size: 2,
              ),
              const SizedBox(
                height: 16.0,
              ),
              const CustomTextField(
                labelText: 'Username',
                isPasswordField: false,
              ),
              const SizedBox(
                height: 8.0,
              ),
              dropdownButtonFormField('Gender', genderList),
              const SizedBox(
                height: 8.0,
              ),
              dropdownButtonFormField('Class', classList),
              const SizedBox(
                height: 8.0,
              ),
              dobWidget(),
              const SizedBox(height: 32),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                width: double.infinity,
                height: 52,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const SignUpScreenStep2();
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
