import 'package:e_commerce_application/pages/home/foot_page_body.dart';
import 'package:e_commerce_application/utils/colors.dart';
import 'package:e_commerce_application/utils/dimension.dart';
import 'package:e_commerce_application/widgets/big_text.dart';
import 'package:e_commerce_application/widgets/small_text.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    // print("Current Height is "+MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: Dimension.height45,bottom: Dimension.height15),
              padding: EdgeInsets.only(left: Dimension.Width20,right: Dimension.Width20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(text: "India",color: AppColors.mainColor,),
                       Row(
                         children: [
                           SmallText(text:"Patan",color: Colors.black54,),
                           Icon(Icons.arrow_drop_down_rounded)
                         ],
                       )],
                    ),
                    Center(
                      child: Container(
                        width: Dimension.height45,
                        height: Dimension.height45,
                        child: Icon(Icons.search,color: Colors.white,size:Dimension.iconSize24),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimension.radius15),
                          color: AppColors.mainColor,
                        ),
                      ),
                    )
                  ]),
            ),
           
           ),
         Expanded(child: SingleChildScrollView(
          child: FoodPageBody(),
          )),
        ],
      ),
    );
  }
}
