import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/shared/Custom_button_general.dart';
import 'package:hungry/shared/Custome_Text.dart';
class ProductPricingBar extends StatelessWidget {
  const ProductPricingBar({super.key, required this.price});
  final double price ;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomeText(content: "Total"),
              Gap(5),
              CustomeText(content: "\$ $price",fontsize: 20,fontWeight: FontWeight.bold,)
            ],
          ),
          Gap(80),
          Expanded(
            child: const CustomButtonGeneral(height: 70, radius: 15, content: "Add To Cart", ),
          )
        ],
      ),
    );
  }
}
