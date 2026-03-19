import 'package:flutter/material.dart';

class CustomeText extends StatelessWidget {
  const CustomeText({super.key,
    required this.content,
     this.color,
     this.fontWeight,
   this.fontsize});
  final String content ;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontsize;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style:TextStyle(
          fontSize: fontsize,
          color: color,
          fontWeight: fontWeight,

      ),
    );
  }
}
