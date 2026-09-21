import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            height: widget.height.h,
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
                    borderRadius: BorderRadius.circular(15.r),
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
          bottom: 10.h,
          child: AnimatedSmoothIndicator(
            activeIndex: activetIndex,
            count: widget.images.length,
            effect: ExpandingDotsEffect(
              dotColor: Colors.white,
              activeDotColor: const Color(0xff53B175),
              dotWidth: 10.w,
              dotHeight: 10.h,
              spacing: 5.w,
            ),
          ),
        ),
      ],
    );
  }
}
