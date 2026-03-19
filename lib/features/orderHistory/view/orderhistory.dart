import 'package:flutter/material.dart';
import 'package:hungry/shared/Custome_Text.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomeText(content: "From Order History "),
      ),
    );
  }
}
