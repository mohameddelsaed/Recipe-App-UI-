import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/S&C/size_config.dart';
import 'package:recipe_app/models/Nav_item.dart';
import 'icon_nav_button.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double? defaultSize = SizeConfig.defaultSize;
    return Consumer<NavItems>(
      builder: (context,navItems,child)=> Container(
        padding: EdgeInsets.symmetric(horizontal: defaultSize!*3),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0,-7),
              blurRadius: 30,
              color:  const Color(0xFF4B1A39).withOpacity(0.2),
            )
          ],
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:List.generate(
              navItems.items.length, (index) => buildIconNavButton(
              isActive : navItems.selectedIndex == index ? true : false,
                icon: navItems.items[index].icon,
            press: (){
                navItems.changeNavIndex(index: index);
                if (navItems.items[index].destinationChecker()) {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>navItems.items[index].destination),);
                }
                },
            ),
            ) ,
          ),
        ),
      ),
    );
  }


}