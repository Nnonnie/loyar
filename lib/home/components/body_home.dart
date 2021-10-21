import 'package:flutter/material.dart';
import 'package:loyar/home/components/CustomButtomSheet.dart';
import 'package:loyar/home/components/Homeheading.dart';
import 'package:loyar/screen/size_config.dart';

//import 'package:nornknee/home/components/section_title.dart';

class BodyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          HomeHeading(),
          Expanded(child:Stack(
            children: <Widget>[
             // CarouselView(),
              CustomButtomSheet(),
            ],
          ))

          
        ],
      ),


    );
  }
}





class AdsCards extends StatelessWidget {
  const AdsCards({
    Key key,
    @required this.category,
    @required this.image,
    @required this.numOfAds,
    @required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfAds;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(242),
      height: getProportionateScreenWidth(100),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFD50000).withOpacity(0.4),
                    Color(0xFFD50000).withOpacity(0.15),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
