import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/models/exp_category_model.dart';

class CategoryProduct extends StatelessWidget {
  final ExpCategoryModel category;
  const CategoryProduct({super.key, required this.category});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: category.color,
        border: Border.all(color: category.borderColor, width: 1.5.w),
        borderRadius: BorderRadius.circular(18.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(category.image, height: 90.h),
          SizedBox(height: 15.h),
          Text(
            category.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0xff181725),
            ),
          ),
        ],
      ),
    );
  }
}
