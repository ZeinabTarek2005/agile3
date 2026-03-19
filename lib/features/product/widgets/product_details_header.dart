import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/shared/Custome_Text.dart';
class ProductDetailsHeader extends StatelessWidget {
  const ProductDetailsHeader({super.key, required this.productImageDetails});
  final String productImageDetails;

  @override
  Widget build(BuildContext context) {
    return               Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Image.asset(
          productImageDetails,
          width: 150,
          height: 200,
          fit: BoxFit.fill,
        ),
        Gap(40),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 45),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: "Customize",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text:
                        " Your Burger\nto Your Tastes. Ultimate\nExperience",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(8),
                CustomeText(
                  content: "Spicy",
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                Slider(
                  min: 1,
                  max: 10,
                  activeColor: Appcolors.primary,
                  inactiveColor: Colors.grey.shade300,
                  value: 5,
                  onChanged: (v) {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("🥶"), Text("🌶")],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
