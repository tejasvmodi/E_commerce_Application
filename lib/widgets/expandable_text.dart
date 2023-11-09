import 'package:e_commerce_application/utils/colors.dart';
import 'package:e_commerce_application/utils/dimension.dart';
import 'package:e_commerce_application/widgets/small_text.dart';
import 'package:flutter/material.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({super.key, required this.text});

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText=true;
  double textheight = Dimension.screenHeight/5.63;


 @override
  void initState() {
    super.initState();
    if(widget.text.length > textheight){
      firstHalf=widget.text.substring(0,textheight.toInt());
      secondHalf=widget.text.substring(textheight.toInt()+1,widget.text.length);
    }
    else{
      firstHalf=widget.text;

      secondHalf="";
    }
    
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SmallText(color:AppColors.paraColor,size:Dimension.font16,text: firstHalf):Column(
        children: [
          SmallText(height: 1.8,color:AppColors.paraColor,size:Dimension.font16,text:hiddenText?(firstHalf+"..."):(firstHalf+secondHalf)),
          InkWell(
            onTap: () {
              setState(() {
                hiddenText=!hiddenText;
              });
            },
            child: Row(    
              children: [
                SmallText(text:hiddenText?"Show More":"Show Less",color:AppColors.mainColor,),
                Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up,color: AppColors.mainColor,),
              ],
            ),
          )
        ],
      ),
    );
  }
}