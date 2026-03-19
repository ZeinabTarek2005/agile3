import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.primary,
      body: Center(
        child: Column(
          children: [
            Gap(200),
            SvgPicture.asset("assets/logo/Hungry.svg"),
            Spacer(),
            Image.asset("assets/splash/burger.png")

          ],
        ),
      ),
    );
  }
}
