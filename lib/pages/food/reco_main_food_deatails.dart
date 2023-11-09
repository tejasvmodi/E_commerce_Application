import 'package:e_commerce_application/utils/colors.dart';
import 'package:e_commerce_application/utils/dimension.dart';
import 'package:e_commerce_application/widgets/app_icon.dart';
import 'package:e_commerce_application/widgets/big_text.dart';
import 'package:e_commerce_application/widgets/expandable_text.dart';
import 'package:flutter/material.dart';

class RecommendedFoddDetails extends StatelessWidget {
  const RecommendedFoddDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(  
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(Dimension.height20),
              child: Container(
                child: Center(
                  child: BigText(
                    text: "Chinese side",
                    size: Dimension.font26,
                  ),
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimension.radius20),
                    topRight: Radius.circular(Dimension.radius20),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/jay-wennington-N_Y88TWmGwA-unsplash.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(
                    text:
                        "Imagine waking up to the smell of freshly baked bread wafting through the air. You go downstairs to find a delicious breakfast waiting for you: pancakes with maple syrup and bacon, eggs cooked to your liking, and a steaming cup of coffee. You sit down at the table with your family and friends, and you savor every bite.  After breakfast, you go to work or school, but the thought of lunch is never far from your mind. Maybe you're looking forward to a juicy hamburger with all the fixings, or a fresh salad with grilled chicken. Maybe you're even planning to make your own lunch, so you can pack something healthy and satisfying. When dinnertime rolls around, you're ready for a hearty meal. Maybe you're making your favorite dish, or trying something new. Maybe you're even going out to eat at a nice restaurant. No matter what, you know that dinner is going to be a delicious way to end the day.Food is more than just sustenance. It's a way to connect with others, to celebrate special occasions, and to simply enjoy life. So next time you're sitting down to a meal, take a moment to appreciate the food that you have. It's a gift.After breakfast, you go to work or school, but the thought of lunch is never far from your mind. Maybe you're looking forward to a juicy hamburger with all the fixings, or a fresh salad with grilled chicken. Maybe you're even planning to make your own lunch, so you can pack something healthy and satisfying.",
                  ),
                  margin: EdgeInsets.only(
                      left: Dimension.Width20, right: Dimension.Width20),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimension.Width20 * 2.5,
              top: Dimension.Width10 * 2.5,
              bottom: Dimension.Width10 * 2.5,
              right: Dimension.Width20 * 2.5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconColor: Colors.white,
                    iconsize: Dimension.iconSize24,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),

                  BigText(text: "\$12.88"+" X "+" 0 ",color: AppColors.mainBlackColor,size: Dimension.font26,),
                AppIcon(
                    iconsize: Dimension.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add)
              ],
            ),
          ),
         Container(
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
              child:Icon(
                  Icons.favorite,
                  color: AppColors.mainColor, 
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
    
        ],
      ),
    );
  }
}
