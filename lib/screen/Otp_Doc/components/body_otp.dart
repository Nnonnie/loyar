import 'package:flutter/material.dart';
import 'package:loyar/config/palette.dart';
import 'package:loyar/screen/Otp_Doc/components/otpForm.dart';
import 'package:loyar/screen/size_config.dart';



class BodyOtp extends StatelessWidget {
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
                SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text("OTP Verification", style: headingStyle),
              Text("We sent your code to +234"),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight * 0.15),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              GestureDetector(
                onTap: (){
        
                } // resend OTP action
                ,
                child: Text("Resend OTP Code",
                    style: TextStyle(decoration: TextDecoration.underline)),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expire in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 45.0, end: 0),
          duration: Duration(seconds: 45), //because of timing on the
          builder: (context, value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}

