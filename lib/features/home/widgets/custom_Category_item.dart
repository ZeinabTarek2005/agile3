import 'package:flutter/material.dart';
import 'package:hungry/shared/Custome_Text.dart';

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem({super.key, required this.item, required this.itemBackground, required this.itemcolor});
  final String item;
  final Color itemBackground;
  final Color itemcolor;

  //
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 7),
      alignment: Alignment.center,
      padding:EdgeInsets.symmetric(horizontal: 20,vertical: 30) ,

      decoration: BoxDecoration(
          color:itemBackground ,
          borderRadius: BorderRadius.circular(40)
      ),
      child: CustomeText(content: item,fontWeight: FontWeight.w800,color:Colors.white,),
    );
  }
}
