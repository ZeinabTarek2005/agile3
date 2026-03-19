import 'package:flutter/material.dart';
import 'package:hungry/features/auth/view//login_view.dart';
import 'package:hungry/features/auth/view/signup_view.dart';
import 'package:hungry/features/product/view/product_details_view.dart';
import 'package:hungry/root.dart';
import 'splash.dart';
void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Root(),debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white
    ),
    );
  }

}