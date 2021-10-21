import 'package:flutter/material.dart';
import 'package:loyar/Components/social_card.dart';
import 'package:loyar/config/palette.dart';
import 'package:loyar/screen/Sign_up/components/Sign_up_form.dart';
import 'package:loyar/screen/size_config.dart';


class BodySignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child:SingleChildScrollView(
          child: Column(
            children: [
                 SizedBox(height: SizeConfig.screenHeight *0.02),
              Text(
                "Register Account",
                style: headingStyle,
              ),
              Text(
                "Complete your details or continue \n with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight *0.05),

              SignUpForm(),
              
               SizedBox(height: SizeConfig.screenHeight *0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialCard(
                        icon: "assets/icons/tik-tok.svg",
                        press: () {},
                      ),
                      SocialCard(
                        icon: "assets/icons/tik-tok.svg",
                        press: () {},
                      ),
                    ],
                  ),
                  
                   SizedBox(height: getProportionateScreenHeight(20)),
                  Text("Continuing with registration confirms that you agreed with our Terms and Conditons", textAlign: TextAlign.center,)
                 
            ],
          ),
        ),
      ),
    );
  }
 
}
