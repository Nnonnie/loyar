import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselView extends StatefulWidget {
  // const CarouselView({Key key}) : super(key: key);

  @override
  _CarouselViewState createState() => _CarouselViewState();
}

class _CarouselViewState extends State<CarouselView> {
  final controller = CarouselController();
  int activeIndex = 0;
  final urlImages = [
   // 'https://www.istockphoto.com/photo/collection-her-candy-gm951074554-259618286'
   // 'https://www.istockphoto.com/photo/collection-her-candy-gm951074554-259618286'
    
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
      // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider.builder(
              options: CarouselOptions(
               
                height: 150,
                
                // viewportFraction: 1,
                autoPlay: true,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                // enableInfiniteScroll: false,
                // reverse: true,
                autoPlayInterval: Duration(seconds: 10),
    
                onPageChanged: (index, reason) =>
                    setState(() => activeIndex = index),
              ),
              itemCount: urlImages.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = urlImages[index];
    
                return buildImage(urlImage, index);
              }
              ),
          const SizedBox(height: 10),
          buildIndicator(),
        ],
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        color: Colors.grey,
      width: double.infinity,
        child: Image.network(
          urlImage,
          fit: BoxFit.cover,
        ),
      );
  Widget buildIndicator() => AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: urlImages.length,
      onDotClicked: animateToSlide,
      effect: ExpandingDotsEffect(
          dotWidth: 10,
          dotHeight: 10,
          activeDotColor: Colors.amber,
          dotColor: Colors.pink));

  void animateToSlide(int index) => controller.animateToPage(index);
}
