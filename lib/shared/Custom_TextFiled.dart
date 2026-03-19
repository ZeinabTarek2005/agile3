import 'package:flutter/material.dart';

class CustomTextfiled extends StatefulWidget {
   CustomTextfiled({super.key, required this.hint, required this.ispassword});
  final String hint ;
   bool ispassword;


  @override
  State<CustomTextfiled> createState() => _CustomTextfiledState();
}

class _CustomTextfiledState extends State<CustomTextfiled> {
  late bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10)
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10)
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: widget.hint,
          suffixIcon: (widget.ispassword) ? IconButton(onPressed: (){setState(() {
            obscureText=!obscureText;


          });}, icon: Icon(obscureText? Icons.remove_red_eye:Icons.remove_red_eye_outlined) ): null

        ),
        obscureText: widget.ispassword? obscureText: widget.ispassword,


      );

  }
}
