import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../S&C/constance.dart';

IconButton buildIconNavButton({required String icon, Function()? press,bool isActive = false} ) {
  return IconButton(
    onPressed: press,
    icon: SvgPicture.asset(
      icon,
      color: isActive ? KPrimaryColor :const Color(0xFFD1D4D4) ,
      height: 22,
    ),
  );
}