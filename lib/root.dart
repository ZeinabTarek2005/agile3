import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/features/auth/view/profile_view.dart';
import 'package:hungry/features/cart/view/cart.dart';
import 'package:hungry/features/home/view/homeview.dart';
import 'package:hungry/features/orderHistory/view/orderhistory.dart';
import 'package:hungry/features/product/view/product_details_view.dart';


class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int currentStat = 0;
  late PageController controler;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controler = PageController(initialPage: currentStat);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: PageView(
      //   controller: controler,
      //   children: [Homeview(), Cartview(), OrderHistory(), ProfileView()],
      //   physics: NeverScrollableScrollPhysics(),
      // ),
      //

     body:  IndexedStack(

        index: currentStat,
        children: [
          Homeview(),
          Cartview(),
          OrderHistory(),
          ProfileView(),
        ],
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Appcolors.primary,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),

        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey.shade700.withOpacity(0.7),
          currentIndex: currentStat,

          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top:10),
                child: Icon(CupertinoIcons.home),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top:10),
                child: Icon(CupertinoIcons.cart),
              ),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top:10),
                child: Icon(Icons.local_restaurant),
              ),
              label: "Order History",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top:10),
                child: Icon(CupertinoIcons.profile_circled),
              ),
              label: "Profile",
            ),
          ],
          onTap: (v) {
            setState(() {
              currentStat = v;
            });

          },
        ),
      ),
    );
  }
}
