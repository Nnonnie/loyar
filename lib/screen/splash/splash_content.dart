import 'package:flutter/material.dart';
import 'package:loyar/config/palette.dart';
import 'package:loyar/screen/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key, this.text, this.image,
  }) : super(key: key);
  final String text,image;

  @override
  Widget build(BuildContext context) {
    return Column(
       children: <Widget>[
         Spacer
         (flex: 1,
         ),
         // to kill off the overflowing rendering
         Expanded(child: 
         Text("LOYAR",
         style: TextStyle(
           fontSize: getProportionateScreenHeight(36),
           color: kPrimaryColor,
           fontWeight: FontWeight.bold,
         ),
         ),
         ),
         Text(text, textAlign: TextAlign.center,),
         Spacer(flex: 1),
         Image.asset(
           image,
         height: getProportionateScreenHeight(265) ,
         width: getProportionateScreenWidth(235),

         )
       ],
     );
  }
}
