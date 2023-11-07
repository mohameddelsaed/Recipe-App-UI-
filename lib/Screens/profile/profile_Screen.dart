import 'package:flutter/material.dart';
import 'package:recipe_app/S&C/constance.dart';
import 'package:recipe_app/S&C/size_config.dart';
import 'package:recipe_app/Screens/profile/components/bodyy.dart';
import 'package:recipe_app/Widgets/Bottom_Nav.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBarr(),
      body: const BodyProfile(),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }

  AppBar buildAppBarr() {
    return AppBar(
      backgroundColor: KPrimaryColor,
      leading: const SizedBox(),
      centerTitle: true,
      title: const Text('Profile '),
      actions: [
        TextButton(
          onPressed: (){},
          child: Text('Edit',style: TextStyle(
              color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: SizeConfig.defaultSize! * 1.6 ,
          ),
          ),
        ),
      ],
    );
  }
}
