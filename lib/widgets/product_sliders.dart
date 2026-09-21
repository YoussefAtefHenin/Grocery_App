import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductSliders extends StatefulWidget {
  double height;
  double width;
  List<String> images;

  ProductSliders({
    super.key,
    required this.height,
    required this.width,
    required this.images,
  });

  @override
  State<ProductSliders> createState() => _ProductSlidersState();
}

class _ProductSlidersState extends State<ProductSliders> {
  int activetIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10.h),

        SizedBox(height: 30.h),

        SizedBox(
          height: widget.height.h + 40.h,
          width: widget.width.w,
          child: Stack(
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
                        width: widget.width.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: Image.asset(i).image,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),

              Positioned(
                top: widget.height.h + 30.h,
                left: 0,
                right: 0,
                bottom: 0,
                child: Center(
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
