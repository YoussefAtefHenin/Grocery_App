import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSliders extends StatefulWidget {
  double height;
  List<String> images;
  HomeSliders({super.key, required this.height, required this.images});

  @override
  State<HomeSliders> createState() => _HomeSlidersState();
}

class _HomeSlidersState extends State<HomeSliders> {
  int activetIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: widget.height,
            autoPlay: true,
            viewportFraction: 1,
            enableInfiniteScroll: false,
            onPageChanged: (i, reason) {
              setState(() {
                activetIndex = i;
              });
            },
          ),
          items: widget.images
              .map(
                (i) => Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: Image.network(i).image,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        Positioned(
          bottom: 10,
          child: AnimatedSmoothIndicator(
            activeIndex: activetIndex,
            count: widget.images.length,
            effect: ExpandingDotsEffect(
              dotColor: Colors.white,
              activeDotColor: Color(0xff53B175),
              dotWidth: 10,
              dotHeight: 10,
              spacing: 5,
            ),
          ),
        ),
      ],
    );
  }
}

// List<String> images = [
//   "https://i.pinimg.com/736x/08/de/f4/08def4297940226f4bf8e87eac76405b.jpg",
//   "https://i.pinimg.com/1200x/83/35/b5/8335b51ac60872f87269bd5682ca9c53.jpg",
//   "https://i.pinimg.com/1200x/e9/b1/67/e9b16750a87a69e8d182899c1a3fed8d.jpg",
// ];
