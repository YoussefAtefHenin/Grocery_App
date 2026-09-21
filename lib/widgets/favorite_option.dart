import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteOption extends StatelessWidget {
  final String image;
  final String text;
  final String quantity;
  final double price;

  const FavoriteOption({
    super.key,
    required this.image,
    required this.text,
    required this.quantity,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(image, width: 56.w, height: 56.h),

            SizedBox(width: 10.w),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff181725),
                    ),
                  ),

                  Text(
                    quantity,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff7C7C7C),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(width: 10.w),

            Text(
              "\$$price",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xff181725),
              ),
            ),

            SizedBox(width: 10.w),

            Icon(
              Icons.arrow_forward_ios,
              size: 21.sp,
              color: const Color(0xff181725),
            ),
          ],
        ),

        SizedBox(height: 17.h),

        Divider(thickness: 1.5.w, color: const Color(0xffE2E2E2)),
      ],
    );
  }
}
