import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/features/product/widgets/product_details_header.dart';
import 'package:hungry/features/product/widgets/product_pricing_bar.dart';
import 'package:hungry/features/product/widgets/topping_item_details.dart';
import 'package:hungry/shared/Custom_button_general.dart';
import 'package:hungry/shared/Custome_Text.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, size: 30, weight: 20),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(10),
              // Product Details Hearder
              ProductDetailsHeader(productImageDetails: "assets/test/detaildImage.png"),
              Gap(30),
              CustomeText(
                content: "Toppings",
                fontWeight: FontWeight.bold,
                fontsize: 20,
              ),

              // this is Topping List of the product
              SizedBox(
                height: 99,
                child: ListView.builder(
                  clipBehavior: Clip.none,
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (context, i) => ToppingItemDetails(),
                ),
              ),
              Gap(40),
              CustomeText(
                content: "Side options",
                fontWeight: FontWeight.bold,
                fontsize: 20,
              ),
              // this other options for this items
              Gap(10),
              SizedBox(
                height: 99,
                child: ListView.builder(
                  clipBehavior: Clip.none,
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (context, i) => ToppingItemDetails(),
                ),
              ),
              
              Gap(40),
              
// this is used to give the final product price
              ProductPricingBar(price: 18.19),


              Gap(30)
            ],
          ),
        ),
      ),
    );
  }
}
