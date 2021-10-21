

import 'package:flutter/material.dart';
import 'package:loyar/config/palette.dart';
import 'package:loyar/screen/Sign_in/sign_in_screen.dart';
import 'package:loyar/screen/size_config.dart';
import 'package:loyar/screen/splash/splash_content.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {"text": "Welcome To loyar", "image": "assets/images/logo.jpg"},
    {
      "text": "Tow to Earn",
      "image": "assets/images/ochulo1.png",
    },
    {
      "text": "Play to Earn ",
      "image": "assets/images/20210703_055046.jpg",
    },
    {
      "text": "Insure to Earn ",
      "image": "assets/images/20210703_055046.jpg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(children: <Widget>[
          Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]["text"],
                ),
              )),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length,
                      (index) => buildDot(index: index),
                    ),
                  ),
                  Spacer(flex: 3),
                  FittedBox(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context,SignInScreen.routeName);
                      },
                      child: Row(
                        children: [
                          Text(
                            "Skip",
                            style: Theme.of(context).textTheme.bodyText1.copyWith(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .color
                                   .withOpacity(0.8)
                                    ),

                          ),
                          //SizedBox(width:kDefaultPadding / 4),
                          Icon(Icons.arrow_forward,
                              size: 16,
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .color
                                  .withOpacity(0.8)),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFFF6F00),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
