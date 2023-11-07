import 'package:flutter/material.dart';
import 'package:recipe_app/S&C/size_config.dart';
import 'package:recipe_app/Screens/profile/components/profile_menu_item.dart';
import 'info_profile.dart';

class BodyProfile extends StatelessWidget {
  const BodyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Info(
          name: 'John Doe',
          email:'johndoe@gmail.com' ,
          image:'assets/images/pic.png' ,
        ),
        SizedBox(height: SizeConfig.defaultSize!*2,),
        ProfileMenuItem(
            iconSrc: 'assets/icon/bookmark_fill.svg',
            title: 'Saved Recipes',
            press: (){},
        ),
        ProfileMenuItem(
          iconSrc: 'assets/icon/chef_color.svg',
          title: 'Super Plan',
          press: (){},
        ),
        ProfileMenuItem(
          iconSrc: 'assets/icon/language.svg',
          title: 'Change Language ',
          press: (){},
        ),
        ProfileMenuItem(
          iconSrc: 'assets/icon/info.svg',
          title: 'Help',
          press: (){},
        ),
      ],
    );
  }
}






