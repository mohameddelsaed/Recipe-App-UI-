import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/Screens/home/home_screens.dart';
import 'package:recipe_app/models/Nav_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>NavItems(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(color: Colors.white,elevation: 0),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}


