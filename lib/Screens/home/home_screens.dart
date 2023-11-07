import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/S&C/size_config.dart';
import 'package:recipe_app/Screens/home/components/body.dart';

import '../../Widgets/Bottom_Nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(icon:SvgPicture.asset('assets/icon/menu.svg') ,
        onPressed:(){} ,
      ),
      centerTitle: true,
      title: Image.asset('assets/images/logo.png'),
      actions: [IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icon/search.svg')
      ),
        SizedBox(width:SizeConfig.defaultSize! * 0.5,)
      ],
    );
  }
}


