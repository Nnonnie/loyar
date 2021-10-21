import 'package:flutter/material.dart';
import 'package:loyar/config/palette.dart';
import 'package:loyar/screen/Reg_Profile/components/complete_reg.dart';
import 'package:loyar/screen/size_config.dart';


class BodyCompleteSignup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
               SizedBox(height: SizeConfig.screenHeight *0.02),
              Text("Create Profile", style: headingStyle),
              Text(
                "Kindly fill in the neccessary details below or continue with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight *0.05),
              CompleteProfileForm(),
              SizedBox(height: getProportionateScreenHeight(30),),
              Text("Continunig with registration comfirms that your agree with our Terms and Condtions",
              textAlign: TextAlign.center,)
            ],
          ),
        ),
      ),
    );
  }
}

