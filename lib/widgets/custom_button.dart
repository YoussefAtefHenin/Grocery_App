import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;

  const CustomButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(19.r),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 25.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19.r),
          color: const Color(0xff53B175),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xffFFF9FF),
            ),
          ),
        ),
      ),
    );
  }
}
