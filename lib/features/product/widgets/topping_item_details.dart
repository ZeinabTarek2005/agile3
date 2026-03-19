import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/shared/Custome_Text.dart';
class ToppingItemDetails extends StatelessWidget {
  const ToppingItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 84,
      height: 99,

      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Color(0xff3C2F2F),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 4,
            offset: Offset(0, 4), // يمين و أسفل
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            width: 84,
            height: 61,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Card(
                shadowColor: Colors.grey.shade600,
                margin: EdgeInsets.zero,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset("assets/test/topingItem.png" ,width: 55,height: 45.91,),
                ),

              ),


            ),
          ),
          Gap(5),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child:Row(
              children: [
                CustomeText(content: "Tomato",color: Colors.white,fontsize: 13,fontWeight: FontWeight.w600,),
                Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Icon(Icons.add,color: Colors.white ,size: 20,fontWeight: FontWeight.bold,),
                  radius: 10,
                )


              ],
            ),

          )


        ],
      ),
    );
  }
}
