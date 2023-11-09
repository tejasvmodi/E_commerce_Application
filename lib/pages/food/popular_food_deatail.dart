import 'package:e_commerce_application/utils/colors.dart';
import 'package:e_commerce_application/utils/dimension.dart';
import 'package:e_commerce_application/widgets/app_column.dart';
import 'package:e_commerce_application/widgets/app_icon.dart';
import 'package:e_commerce_application/widgets/big_text.dart';
import 'package:e_commerce_application/widgets/expandable_text.dart';
// import 'package:e_commerce_application/widgets/icon_and_text.dart';
// import 'package:e_commerce_application/widgets/small_text.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background Image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimension.popularFoodSize,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            "assets/images/casey-lee-awj7sRviVXo-unsplash.jpg"))),
              )),
          // icon widget
          Positioned(
              top: Dimension.height45,
              left: Dimension.Width20,
              right: Dimension.Width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined)
                ],
              )),
          // introduction of the food 
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimension.popularFoodSize - 20,
              child: Container(
                padding: EdgeInsets.only(
                    left: Dimension.Width20,
                    right: Dimension.Width20,
                    top: Dimension.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimension.radius20),
                    topRight: Radius.circular(Dimension.radius20),
                  ),
                  color: Colors.white,
                ),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: "Biryani",),
                    SizedBox(height: Dimension.height20,),
                    BigText(text: "Introduce"),
                    SizedBox(height: Dimension.height15,),
                     // expandable text widget
                     Expanded(child: SingleChildScrollView(child: ExpandableTextWidget(text: "On the table was a variety of food, including a bowl of steaming soup, a plate of freshly baked bread, and a platter of roasted meat. The soup was made with chicken broth, vegetables, and noodles. The bread was crusty //on the outside and soft on the inside. The meat was juicy and flavorful. I sat down at the table and began to eat. The soup was warm and comforting. The bread was delicious. The meat was so good that I couldn't stop eating it.")))

                  ],
                ),
              )),
       

        ],
      ),
      bottomNavigationBar: Container(
        height: Dimension.bottomheightbar,
        padding: EdgeInsets.only(top: Dimension.height30,bottom: Dimension.height30,left: Dimension.Width30,right:Dimension.Width30),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimension.radius20*2),
            topRight: Radius.circular(Dimension.radius20*2)
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimension.height10,bottom: Dimension.height10,right: Dimension.Width20,left: Dimension.Width20),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius20),
                color:Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.remove,color: AppColors.signColor,),
                  SizedBox(width: Dimension.Width10/2,),
                  BigText(text: "0"),
                  SizedBox(width: Dimension.Width10/2,),
                  Icon(Icons.add,color:AppColors.signColor,),

                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: Dimension.height10,bottom: Dimension.height10,right: Dimension.Width20,left: Dimension.Width20),

              child: BigText(text: "\$10 | Add to cart",color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.Width20),
                color: AppColors.mainColor,

              ),
            )
          ],
        ),
      ),
    );
  }
}
