
import 'package:flutter/material.dart';
import 'package:loyar/Components/Body.dart';
import 'package:loyar/screen/size_config.dart';


class SplashScreen extends StatelessWidget{
  static String routeName ="/splash";
  @override
  Widget build(BuildContext context) {
   SizeConfig().init(context);
   return Scaffold(
     body: Body(),
   );
  }
  
}