import 'package:flutter/material.dart';
import 'package:loyar/Components/default_button.dart';
import 'package:loyar/screen/Sign_in/sign_in_screen.dart';
import 'package:loyar/screen/size_config.dart';


class BodyLoginSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          "assets/images/logo.jpg",
          height: SizeConfig.screenHeight * 0.4,
        ),
         SizedBox(height: SizeConfig.screenHeight * 0.04),
        Text("Congratulation", style: TextStyle(fontSize:getProportionateScreenWidth(30),
        fontWeight: FontWeight.bold,
        color: Colors.black,
         ) ,
        ),
        SizedBox(
         width:SizeConfig.screenWidth * 0.6,
          child: DefaultButton(text: "Return to Log In", press: (){
             Navigator.pushNamed(context,SignInScreen.routeName);
          },),
        ),
        Spacer(),
      ],
    );
  }
}
