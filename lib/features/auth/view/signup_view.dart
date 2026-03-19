import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/shared/Custom_Button.dart';
import 'package:hungry/shared/Custom_TextFiled.dart';
import 'package:hungry/shared/Custome_Text.dart';
import 'package:gap/gap.dart';
class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.primary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Gap(100),
              SvgPicture.asset("assets/logo/Hungry.svg"),
              Gap(10),
              CustomeText(
                  content: "Welcome back, Discover The Fast Food ",
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontsize: 13
              ),
              Gap(40),
              CustomTextfiled(hint: "Username ", ispassword: false),
              Gap(10),
              CustomTextfiled(hint: "Email Adress ", ispassword: false),
              Gap(10),
              CustomTextfiled(hint: "Password ", ispassword: true),
              Gap(10),
              CustomTextfiled(hint: "Confirm Password ", ispassword: true),
              Gap(10),
              CustomeButton("Sign Up")
            ],
          ),
        ),
      ),
    );
  }
}
