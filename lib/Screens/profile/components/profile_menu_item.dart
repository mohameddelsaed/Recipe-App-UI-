import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../S&C/constance.dart';
import '../../../S&C/size_config.dart';

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
    super.key, required this.iconSrc, required this.title, required this.press,

  });

  final String iconSrc, title;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    double? defaultSize = SizeConfig.defaultSize;
    return InkWell(
      onTap: press,
      child: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal:defaultSize!*2 ,vertical:defaultSize *3 ),
          child: Row(
            children: [
              SvgPicture.asset(iconSrc),
              SizedBox(width: defaultSize *2,),
              Text(title,style: TextStyle(fontSize: defaultSize*1.6,color: KTextLightColor),),
              const Spacer(),
              Icon(Icons.arrow_forward_ios,size: defaultSize+1.6,color:KTextLightColor ,),
            ],
          ),
        ),
      ),
    );
  }
}