import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/shared/Custome_Text.dart';

class CustomeButton extends StatelessWidget{
  CustomeButton( this.ButtonTitle);
  final String ButtonTitle;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 50,

        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)

        ),
        child: CustomeText(content: ButtonTitle,fontsize: 16,fontWeight: FontWeight.w600,color: Appcolors.primary, ),

      ),
      onTap: ()=>print("hello")
      ,
    );
  }



}