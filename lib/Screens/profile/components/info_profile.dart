import 'package:flutter/material.dart';

import '../../../S&C/constance.dart';
import '../../../S&C/size_config.dart';
import '../../../Widgets/custom_shape.dart';

class Info extends StatelessWidget {
  const Info({
    super.key, required this.name, required this.email, required this.image,
  });
  final String name , email , image ;
  @override
  Widget build(BuildContext context) {
    double? defaultSize = SizeConfig.defaultSize;
    return SizedBox(height: defaultSize! *24,
      child: Stack(
        children: [
          ClipPath(
            clipper: CustomShape(),
            child: Container(
              height: defaultSize *15,
              color: KPrimaryColor,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: defaultSize),
                  height: defaultSize *14,
                  width: defaultSize *14,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white,width: defaultSize * 0.8),
                    shape: BoxShape.circle,
                    image:  DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(image),
                    ),
                  ),
                ),
                Text(name,style:
                TextStyle(fontSize: defaultSize *2.2,color:  const Color (0xFF202E2E), ),
                ),
                SizedBox(height: defaultSize/2,),
                Text(email,
                  style:const TextStyle(
                    fontWeight: FontWeight.w400,
                    color:  Color (0xFF7286A5),
                  ) ,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}