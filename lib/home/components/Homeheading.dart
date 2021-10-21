
import 'package:flutter/material.dart';
import 'package:loyar/home/components/iconcount.dart';
import 'package:loyar/home/components/searchwidget.dart';
import 'package:loyar/screen/size_config.dart';



class HomeHeading extends StatelessWidget {
  const HomeHeading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(5),
          vertical: getProportionateScreenWidth(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconBtnWithCounter(
            svgSrc: "assets/icons/person-24px.svg",
            press: () {},
          ),
          SearchWidget(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/inventory-24px.svg",
            numOfnotification: 5,
            press: () {},
          ),
        ],
      ),
    );
  }
}


