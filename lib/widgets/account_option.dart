import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountOption extends StatelessWidget {
  final IconData icon;
  final String text;

  const AccountOption({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 12.h),
          child: Row(
            children: [
              Icon(icon, size: 23.sp, color: const Color(0xff181725)),

              SizedBox(width: 22.w),

              Expanded(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff181725),
                  ),
                ),
              ),

              Icon(
                Icons.arrow_forward_ios,
                size: 21.sp,
                color: const Color(0xff181725),
              ),
            ],
          ),
        ),

        Divider(thickness: 1.5.w, color: const Color(0xffE2E2E2)),
      ],
    );
  }
}
