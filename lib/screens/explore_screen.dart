import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/models/exp_category_model.dart';
import 'package:grocery_app/widgets/category_product.dart';
import 'package:grocery_app/widgets/search_text_field.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Column(
        children: [
          SizedBox(height: 8.h),
          Center(
            child: Text(
              "Find Products",
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xff181725),
              ),
            ),
          ),
          SizedBox(height: 30.h),
          SearchTextField(),
          SizedBox(height: 20.h),
          Expanded(
            child: GridView.builder(
              itemCount: categories.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.w,
                mainAxisSpacing: 10.h,
                childAspectRatio: 0.85,
              ),
              itemBuilder: (context, index) {
                return CategoryProduct(category: categories[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  List<ExpCategoryModel> categories = [
    ExpCategoryModel(
      image: "assets/images/fruits.png",
      name: "Fresh Fruits\n& Vegetable",
      color: const Color(0xffE8F5E9),
      borderColor: const Color(0xffC8E6C9),
    ),
    ExpCategoryModel(
      image: "assets/images/oil.png",
      name: "Cooking Oil\n& Ghee",
      color: const Color(0xfffff4e8),
      borderColor: const Color(0xffffd9b3),
    ),
    ExpCategoryModel(
      image: "assets/images/fish.png",
      name: "Meat & Fish",
      color: const Color(0xffffe9e7),
      borderColor: const Color(0xffffc7c2),
    ),
    ExpCategoryModel(
      image: "assets/images/snacks.png",
      name: "Bakery & Snacks",
      color: const Color(0xfff5eafa),
      borderColor: const Color(0xffdfc5eb),
    ),
    ExpCategoryModel(
      image: "assets/images/eggs.png",
      name: "Dairy & Eggs",
      color: const Color(0xfffff8e5),
      borderColor: const Color(0xffffe5a3),
    ),
    ExpCategoryModel(
      image: "assets/images/beverages.png",
      name: "Beverages",
      color: const Color(0xffe9f7fd),
      borderColor: const Color(0xffb9e5f5),
    ),
    ExpCategoryModel(
      image: "assets/images/pulses.png",
      name: "Pulses",
      color: const Color(0xfff3e8ff),
      borderColor: const Color(0xffd9bfff),
    ),
    ExpCategoryModel(
      image: "assets/images/rice.png",
      name: "Rice",
      color: const Color(0xffffe5ef),
      borderColor: const Color(0xffffbfd5),
    ),
  ];
}
