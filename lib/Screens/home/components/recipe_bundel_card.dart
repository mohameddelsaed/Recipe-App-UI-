import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../S&C/size_config.dart';
import '../../../models/recibeBundel.dart';

// ignore: must_be_immutable
class RecipeBundelCard extends StatelessWidget {
  RecipeBundelCard({super.key, required this.recipeBundle, required this.press});
  final RecipeBundle recipeBundle;
  final Function() press;
  double? defaultSize = SizeConfig.defaultSize;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
          color: recipeBundle.color,
          borderRadius: BorderRadius.circular(defaultSize! * 1.8),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(defaultSize! * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Text(
                      recipeBundle.title,
                      style: TextStyle(
                        fontSize: defaultSize! * 2.2,
                        color: Colors.white,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: defaultSize! * 0.5,
                    ),
                    Text(
                      recipeBundle.description,
                      style: TextStyle(color: Colors.white54),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Spacer(),
                    buildInfoRow(defaultSize!,
                        iconSrc: 'assets/icon/pot.svg',
                        text: '${recipeBundle.chefs} Recipes'),
                    SizedBox(height: defaultSize!* 0.5 ,),
                    buildInfoRow(defaultSize!,
                        iconSrc: 'assets/icon/chef.svg',
                        text: '${recipeBundle.chefs} Chefs'),
                    Spacer(),
                  ],
                ),
              ),
            ),
            SizedBox(width: defaultSize! * 0.5),
            AspectRatio(
              aspectRatio: 0.71,
              child: Image.asset(
                recipeBundles[0].imageSrc,
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildInfoRow(double defaultSize, {required String iconSrc, text}) {
    return Row(
      children: [
        SvgPicture.asset(iconSrc),
        SizedBox(
          width: defaultSize,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}