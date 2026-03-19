import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/features/home/widgets/custom_Category_item.dart';
import 'package:hungry/shared/Custome_Text.dart';

class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  final List<String> Categoris = ["All", "Combos", "Sliders", "Classic"];
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            clipBehavior: Clip.none,
            child: Column(
              children: [
            
                // this is related to header bar
                Gap(70),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          "assets/logo/Hungry.svg",
                          color: Appcolors.primary,
                          height: 35,
                        ),
                        CustomeText(
                          content: "Welcome , Yosif Tarek",
                          fontsize: 16,
                          color: Colors.black54,
                        ),
                      ],
                    ),
                    Gap(20),
                    Spacer(),
                    CircleAvatar(radius: 31),
                  ],
                ),
            
                //this is related to Search bar
                Gap(20),
                Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(30),
                  child: TextField(
                    decoration: InputDecoration(
                      prefix: Icon(CupertinoIcons.search),
            
                      hintText: "Search",
            
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
            
                //this is related to category bar
                Gap(20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,


                  child: Row(
                    children: List.generate(Categoris.length, (i) {
                      return GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(right: 5),
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 20,
                          ),
                          decoration: BoxDecoration(
                            color: (selectedItem == i)
                                ? Appcolors.primary
                                : Color(0xffF3F4F6),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: CustomeText(
                            content: Categoris[i],
                            fontWeight: FontWeight.w800,
                            color: (selectedItem == i)
                                ? Colors.white
                                : Colors.grey.shade600,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            selectedItem = i;
                          });
                        },

                      );
                    }),
                  ),
                ),
                // products
                Gap(10),
              Container(
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      childAspectRatio: 0.78,
                    ),
                    itemBuilder: (context,i){
                      return   Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("assets/test/iteam.png", width: 150),
                              CustomeText(
                                content: "Cheeseburger ",
                                fontWeight: FontWeight.bold,
                              ),
                              CustomeText(content: "Wendy's Burger "),
                              CustomeText(content: "⭐4.9"),


                            ],
                          ),
                        ),
                      );
                    },
                itemCount: 6,
                ),
            
              )
            
            
            
            
            
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
