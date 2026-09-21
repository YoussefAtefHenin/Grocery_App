import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 64.h,
          width: 64.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(27.r),
            image: DecorationImage(
              image: Image.asset("assets/images/profile2.jpg").image,
            ),
          ),
        ),

        SizedBox(width: 15.w),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Afsar Hossen",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff181725),
                  ),
                ),

                SizedBox(width: 4.w),

                Icon(
                  Icons.edit_outlined,
                  size: 20.sp,
                  color: const Color(0xff53B175),
                ),
              ],
            ),

            Text(
              "Imshuvo97@gmail.com",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff7C7C7C),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
