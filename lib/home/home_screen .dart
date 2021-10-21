import 'package:flutter/material.dart';
import 'package:loyar/home/components/body_home.dart';


class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyHome(),
    );
  }
}

//carousel autoserver pickup

