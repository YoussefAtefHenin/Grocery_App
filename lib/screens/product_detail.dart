import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/widgets/custom_button.dart';
import 'package:grocery_app/widgets/product_sliders.dart';

class ProductDetail extends StatelessWidget {
  final int num = 1;

  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 390.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffF2F3F2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.r),
                  bottomRight: Radius.circular(30.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10.h),
                    SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.arrow_back_ios, size: 25.sp),
                          Icon(Icons.download_outlined, size: 25.sp),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.h),
                    ProductSliders(
                      height: 200,
                      width: 330,
                      images: [
                        "assets/images/apple.png",
                        "assets/images/banana.png",
                        "assets/images/apple.png",
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 18.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Naturel Red Apple",
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff181725),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.favorite_outline,
                        size: 27.sp,
                        color: const Color(0xff7C7C7C),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    "1kg, Price",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff7C7C7C),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Icon(
                              Icons.remove,
                              size: 35.sp,
                              color: const Color(0xffB3B3B3),
                            ),
                            SizedBox(width: 14.w),
                            Container(
                              width: 50.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xffE2E2E2),
                                ),
                                borderRadius: BorderRadius.circular(17.r),
                              ),
                              child: Center(
                                child: Text(
                                  num.toString(),
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff181725),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 14.w),
                            Icon(
                              Icons.add,
                              size: 35.sp,
                              color: const Color(0xff53B175),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '\$4.99',
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff181725),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Divider(thickness: 1.5.w, color: const Color(0xffE2E2E2)),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Product Detail",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff181725),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_downward_outlined,
                        size: 27.sp,
                        color: const Color(0xff181725),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff7C7C7C),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Divider(thickness: 1.5.w, color: const Color(0xffE2E2E2)),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Nutritions",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff181725),
                          ),
                        ),
                      ),
                      Container(
                        height: 18.h,
                        width: 33.6.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: const Color.fromARGB(255, 233, 228, 228),
                        ),
                        child: Center(
                          child: Text(
                            "100gr",
                            style: TextStyle(
                              fontSize: 9.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff7C7C7C),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20.sp,
                        color: const Color(0xff181725),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Divider(thickness: 1.5.w, color: const Color(0xffE2E2E2)),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Review",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff181725),
                          ),
                        ),
                      ),
                      Image.asset("assets/images/stars.png"),
                      SizedBox(width: 10.w),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20.sp,
                        color: const Color(0xff181725),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  CustomButton(text: "Add To Basket", onTap: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
