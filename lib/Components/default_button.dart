import 'package:flutter/material.dart';
import 'package:loyar/config/palette.dart';
import 'package:loyar/screen/size_config.dart';



class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key, this.text, this.press,
  }) : super(key: key);
final String text;
final Function press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: ElevatedButton(
       child: Text(
            text,
            style: TextStyle(
              fontSize: getProportionateScreenHeight(18),
            ),
          ),
          onPressed: press,
          style: ElevatedButton.styleFrom(
            primary: kPrimaryColor,
            shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(20),),
          )),
    );
  }
}
