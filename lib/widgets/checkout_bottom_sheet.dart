import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/screens/order_accept_screen.dart';
import 'package:grocery_app/widgets/custom_button.dart';

class CheckoutBottomSheet extends StatelessWidget {
  const CheckoutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.r),
          topRight: Radius.circular(25.r),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Checkout",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff181725),
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                borderRadius: BorderRadius.circular(20.r),
                child: Icon(
                  Icons.close,
                  size: 25.sp,
                  color: const Color(0xff181725),
                ),
              ),
            ],
          ),

          SizedBox(height: 20.h),

          const Divider(color: Color(0xffE2E2E2)),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Delivery",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff7C7C7C),
                    ),
                  ),
                ),
                Text(
                  "Select Method",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff181725),
                  ),
                ),
                SizedBox(width: 6.w),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 23.sp,
                  color: const Color(0xff181725),
                ),
              ],
            ),
          ),

          const Divider(color: Color(0xffE2E2E2)),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Pament",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff7C7C7C),
                    ),
                  ),
                ),
                Container(
                  height: 16.h,
                  width: 21.6.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Image.asset("assets/images/card (1).png").image,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(width: 6.w),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 23.sp,
                  color: const Color(0xff181725),
                ),
              ],
            ),
          ),

          const Divider(color: Color(0xffE2E2E2)),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Promo Code",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff7C7C7C),
                    ),
                  ),
                ),
                Text(
                  "Pick discount",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff181725),
                  ),
                ),
                SizedBox(width: 6.w),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 23.sp,
                  color: const Color(0xff181725),
                ),
              ],
            ),
          ),

          const Divider(color: Color(0xffE2E2E2)),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Total Cost",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff7C7C7C),
                    ),
                  ),
                ),
                Text(
                  "\$13.97",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff181725),
                  ),
                ),
                SizedBox(width: 6.w),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 23.sp,
                  color: const Color(0xff181725),
                ),
              ],
            ),
          ),

          const Divider(color: Color(0xffE2E2E2)),

          SizedBox(height: 15.h),

          Row(
            children: [
              Text(
                textAlign: TextAlign.start,
                "By placing an order you agree to our\n"
                "Terms And Conditions",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff7C7C7C),
                ),
              ),
            ],
          ),

          SizedBox(height: 25.h),

          CustomButton(
            text: "Place Order",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OrderAcceptScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
