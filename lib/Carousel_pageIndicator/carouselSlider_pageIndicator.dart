import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselsliderPageindicator extends StatefulWidget {
  const CarouselsliderPageindicator({super.key});

  @override
  State<CarouselsliderPageindicator> createState() =>
      _CarouselsliderPageindicatorState();
}

class _CarouselsliderPageindicatorState
    extends State<CarouselsliderPageindicator> {
  List<String> wallpaperImages = [
    "assets/images/img1.jpg",
    "assets/images/img2.jpg",
    "assets/images/img3.jpg",
    "assets/images/img4.jpg",
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CarouselSlider.builder(
                itemCount: wallpaperImages.length,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        wallpaperImages[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 1 / 2,
                    // viewportFraction: 1,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      // if (reason == CarouselPageChangedReason.manual) {
                      //   print("User manually swiped to page $index");
                      // }

                      setState(() {
                        activeIndex = index;
                      });
                    }),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: AnimatedSmoothIndicator(
                activeIndex: activeIndex,
                count: wallpaperImages.length,
                effect: WormEffect(
                    dotHeight: 12, dotWidth: 12, activeDotColor: Colors.blue),
                // onDotClicked: (i) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
