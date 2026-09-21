import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/models/product_model.dart';

class ProductItem extends StatelessWidget {
  final ProductModel product;
  const ProductItem({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 25.h,
        left: 15.w,
        right: 15.w,
        bottom: 15.h,
      ),
      width: 173.w,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffE2E2E2)),
        borderRadius: BorderRadius.circular(18.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(child: Image.asset(product.image, height: 100.h)),
          ),
          SizedBox(height: 25.h),
          Text(
            product.name,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0xff181725),
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            product.quantity,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0xff7C7C7C),
            ),
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$ ${product.price}",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff181725),
                ),
              ),
              Container(
                padding: EdgeInsets.all(14.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.r),
                  color: const Color(0xff53B175),
                ),
                child: Icon(Icons.add, color: Colors.white, size: 17.sp),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
