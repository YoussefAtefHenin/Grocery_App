import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/models/categories_model.dart';

class CategoryItem extends StatelessWidget {
  final CategoriesModel categories;
  const CategoryItem({super.key, required this.categories});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 248.w,
      height: 105.h,
      padding: EdgeInsets.all(15.w),
      decoration: BoxDecoration(
        color: categories.color,
        borderRadius: BorderRadius.circular(18.r),
      ),
      child: Row(
        children: [
          Image.asset(categories.image, fit: BoxFit.contain),
          SizedBox(width: 15.w),
          Text(
            categories.name,
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
