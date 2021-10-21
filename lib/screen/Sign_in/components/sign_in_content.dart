import 'package:flutter/material.dart';
import 'package:loyar/Components/No_Account_Text.dart';
import 'package:loyar/Components/social_card.dart';
import 'package:loyar/screen/Sign_in/components/Sign_form.dart';
import 'package:loyar/screen/size_config.dart';



class Signincontent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
       
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight *0.04),
                Text(
                  "Hi Again",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Kindly sign in with your email and passkey \nor through social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight *0.04),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight *0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: "assets/icons/tik-tok.svg",
                      press: () {
                      //  Navigator.pushNamed(context, MainNavScreen.routeName)
                      },
                    ),
                   // SocialCard(
                    //  icon: "assets/icons/tik-tok.svg",
                    //  press: () {},
                  //  ),
                  ],
                ),
                SizedBox(height: getProportionateScreenWidth(20)),
                NoAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

