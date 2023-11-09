import 'package:e_commerce_application/utils/colors.dart';
import 'package:e_commerce_application/utils/dimension.dart';
import 'package:e_commerce_application/widgets/big_text.dart';
import 'package:e_commerce_application/widgets/icon_and_text.dart';
import 'package:e_commerce_application/widgets/small_text.dart';
import 'package:flutter/material.dart';

class AppColumn extends StatelessWidget {
   final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: text,size: Dimension.font26,),
                    SizedBox(
                      height: Dimension.height10,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => Icon(
                                    Icons.star,
                                    color: AppColors.mainColor,
                                    size: 15,
                                  )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "4.5"),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "1287"),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "Comments")
                      ],
                    ),
                    SizedBox(
                      height: Dimension.height20,
                    ),
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
                );
  }
}