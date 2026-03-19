import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/shared/Custome_Text.dart';
class CustomButtonGeneral extends StatelessWidget {
  const CustomButtonGeneral({super.key, required this.height, required this.radius, required this.content,  this.width, this.size});
  final double  height;
  final double radius;
 final String content ;
 final double? width;
 final double? size;



  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,

      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: Appcolors.primary
      ),
      child: CustomeText(content: content,fontsize: (size==null)? 15: size,fontWeight: FontWeight.bold,color: Colors.white,),
    );
  }
}
