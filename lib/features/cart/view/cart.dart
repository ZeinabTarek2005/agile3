import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/features/cart/widgets/cart_item.dart';
import 'package:hungry/shared/Custom_button_general.dart';

import 'package:hungry/shared/Custome_Text.dart';

class Cartview extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(

    
        children: [
          Gap(40),
          Expanded(
            child: ListView.builder(itemBuilder: (context,i){
              return CartItem(cartItemImage: "assets/test/iteam.png", cartItemTitle: "Hamburger", cartItemSubTitle: "Veggie Burger", counter: 0);
            },
              itemCount: 9,
              clipBehavior: Clip.none,

            ),

          ),
         
          CustomButtonGeneral(height: 70, radius: 20, content: "content")
        ],
      ),
    )
    );
  }
}
