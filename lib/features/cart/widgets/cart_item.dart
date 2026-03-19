import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/shared/Custom_button_general.dart';
import 'package:hungry/shared/Custome_Text.dart';
class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cartItemImage, required this.cartItemTitle, required this.cartItemSubTitle, required this.counter});
  final String cartItemImage;
  final String cartItemTitle;
  final String cartItemSubTitle;
  final int counter;

  @override
  Widget build(BuildContext context) {
    return           Container(
      decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [

            BoxShadow(color: Colors.black.withOpacity(0.25),blurRadius: 1000,offset: Offset(0, 1),spreadRadius:1)
          ]
      ),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),

        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(cartItemImage, width: 100, height: 100,fit: BoxFit.contain,),
                  CustomeText(content: cartItemTitle, fontWeight: FontWeight.w900,fontsize: 16,),
                  CustomeText(content: cartItemSubTitle,fontWeight: FontWeight.w400,fontsize: 16,)
                ],
              ),
              Gap(80),

              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                        children: [

                          CustomButtonGeneral(height: 43, radius: 8, content: "-",width: 39,size: 25),
                          CustomeText(content: "$counter", fontWeight: FontWeight.w500,fontsize: 18,),
                          CustomButtonGeneral(height: 43, radius: 8, content: "+",width: 39,size: 25,),
                        ],
                      ),

                    ),
                    Gap(30),
                    CustomButtonGeneral(height: 43, radius: 20, content: "Remove")
                  ],
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
