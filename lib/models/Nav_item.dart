import 'package:flutter/material.dart';
import 'package:recipe_app/Screens/home/home_screens.dart';
import 'package:recipe_app/Screens/profile/profile_Screen.dart';

class NavItem {
  final int id;
  final String icon;
  final Widget destination;

  NavItem( {required this.id,required this.icon,required  this.destination });




  bool destinationChecker() {
    if (destination != null) {
      return true;
    }
    return false;
  }
}

class NavItems extends ChangeNotifier{
  int selectedIndex =0;

  void changeNavIndex ({required int index}){
    selectedIndex = index;
    notifyListeners();
  }

   List<NavItem> items =[
   NavItem(id: 1,
       icon: "assets/icon/home.svg",
       destination: const HomeScreen(),
   ),
     NavItem(id: 2,
       icon: "assets/icon/list.svg",
       destination: const HomeScreen(),
     ),
     NavItem(id: 3,
       icon: "assets/icon/camera.svg",
       destination: const HomeScreen(),
     ),
     NavItem(id: 4,
       icon: "assets/icon/chef_nav.svg",
       destination: const HomeScreen(),
     ),
     NavItem(id: 5,
       icon: "assets/icon/user.svg",
       destination: const profileScreen()
     ),
  ];
}
