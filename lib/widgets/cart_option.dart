import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartOption extends StatelessWidget {
  final String image;
  final String text;
  final String quantity;
  final double price;

  const CartOption({
    super.key,
    required this.image,
    required this.text,
    required this.quantity,
    required this.price,
  });

  final int num = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 12.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 70.w,
                height: 70.h,
                child: Image.asset(image, fit: BoxFit.contain),
              ),

              SizedBox(width: 17.w),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            text,
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff181725),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),

                        Icon(
                          Icons.close,
                          size: 25.sp,
                          color: const Color(0xffB3B3B3),
                        ),
                      ],
                    ),

                    SizedBox(height: 2.h),

                    Text(
                      quantity,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff7C7C7C),
                      ),
                    ),

                    SizedBox(height: 12.h),

                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                width: 45.w,
                                height: 45.h,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xffE2E2E2),
                                  ),
                                  borderRadius: BorderRadius.circular(17.r),
                                ),
                                child: Icon(
                                  Icons.remove,
                                  size: 35.sp,
                                  color: const Color(0xffB3B3B3),
                                ),
                              ),

                              SizedBox(width: 14.w),

                              Text(
                                num.toString(),
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff181725),
                                ),
                              ),

                              SizedBox(width: 14.w),

                              Container(
                                width: 45.w,
                                height: 45.h,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xffE2E2E2),
                                  ),
                                  borderRadius: BorderRadius.circular(17.r),
                                ),
                                child: Icon(
                                  Icons.add,
                                  size: 35.sp,
                                  color: const Color(0xff53B175),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Text(
                          '\$$price',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff181725),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        Divider(thickness: 1.5.w, color: const Color(0xffE2E2E2)),
      ],
    );
  }
}
