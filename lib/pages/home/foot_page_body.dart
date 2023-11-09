import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce_application/utils/colors.dart';
import 'package:e_commerce_application/utils/dimension.dart';
import 'package:e_commerce_application/widgets/app_column.dart';
import 'package:e_commerce_application/widgets/big_text.dart';
import 'package:e_commerce_application/widgets/icon_and_text.dart';
import 'package:e_commerce_application/widgets/small_text.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimension.PageViewContainer;

  @override
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //slider section
        Container(
          // color: Colors.redAccent,
          height: Dimension.PageView,
          child: PageView.builder(
            controller: pageController,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            },
            itemCount: 5,
          ),
        ),
        //dots
        new DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        //popular Text
        SizedBox(height:Dimension.height30),
        Container(
          margin: EdgeInsets.only(left: Dimension.Width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular"),
              SizedBox(width: Dimension.Width10,),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(text: ".",color: Colors.black26),
              ),
              SizedBox(width: Dimension.Width10,),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: SmallText(text: "Food pairing",),
              )
            ],
          ),
        ), 
        
        //list of food and images
       
         
         ListView.builder(
          shrinkWrap: true,
          physics:NeverScrollableScrollPhysics(),
          itemCount: 12,itemBuilder: (context,index){
          return Container(
            margin: EdgeInsets.only(left: Dimension.Width20,right: Dimension.Width20,bottom: Dimension.height10),
            child: Row(
              children: [
                //image section
                Container(
                  width: Dimension.listviewImgSize,
                  height: Dimension.listviewImgSize,
                  decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(Dimension.radius20),
                    color: Colors.white30,
                    image: DecorationImage(fit: BoxFit.cover,image: AssetImage("assets/images/lily-banse--YHSwy6uqvk-unsplash.jpg"))
                  ),
                ),
                //text section
                Expanded(
                  child: Container(
                    height: Dimension.listviewTextContainerSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(Dimension.radius20),
                        bottomRight: Radius.circular(Dimension.radius20),
                      ),
                      color: Colors.white,
                    ),
                  child: Padding(padding: EdgeInsets.only(left: Dimension.Width10,right: Dimension.Width10),
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BigText(text: "Nutritious fruit meal in China"),
                      SizedBox(height: Dimension.height10,),
                      SmallText(text: "With chinese characteristics"),
                      SizedBox(height: Dimension.height10,),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconAndTextWidget(
                            icon: Icons.circle_sharp,
                            text: "Normal",
                            iconColor: AppColors.iconColor1),
                        IconAndTextWidget(
                            icon: Icons.location_off,
                            text: "1.7km",
                            iconColor: AppColors.mainColor),
                        IconAndTextWidget(
                            icon: Icons.access_time_filled_rounded,
                            text: "32min",
                            iconColor: AppColors.iconColor2),
                      ],
                    )
                    ],
                   ),
                  ),
                  ),
                  
                )
              ],
            ),

          );
        },)
      
    
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 0);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimension.PageViewContainer,
            margin: EdgeInsets.only(left: Dimension.Width10, right: Dimension.Width10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimension.radius30),
              color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/images/charlesdeluvio-D-vDQMTfAAU-unsplash.jpg")),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimension.PageViewTextContainer,
              margin: EdgeInsets.only(left: Dimension.Width30, right: Dimension.Width30, bottom: Dimension.height30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius20),
                // color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffe8e8e8),
                    blurRadius: 5.0,
                    offset: Offset(0, 5),
                  ),
                  BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                  BoxShadow(color: Colors.white, offset: Offset(5, 0))
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(top: Dimension.height15, left: Dimension.height15, right: Dimension.height15),
                 child: AppColumn(text: "Chinese Side",),    ),
            ),
          ),
        ],
      ),
    );
  }

 

}
