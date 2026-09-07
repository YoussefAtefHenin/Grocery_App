import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
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
        SizedBox(height: 10),

        SizedBox(height: 30),
        SizedBox(
          height: widget.height + 40,
          width: widget.width,
          child: Stack(
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
                        width: widget.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
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
                top: widget.height + 30,
                left: 0,
                right: 0,
                bottom: 0,
                child: Center(
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
