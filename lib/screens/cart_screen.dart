import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/widgets/cart_option.dart';
import 'package:grocery_app/widgets/custom_button.dart';
import 'package:grocery_app/widgets/checkout_bottom_sheet.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 15.h),

            Center(
              child: Text(
                "My Cart",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff181725),
                ),
              ),
            ),

            SizedBox(height: 20.h),

            Divider(thickness: 1.5.w, color: const Color(0xffE2E2E2)),

            Column(
              children: [
                CartOption(
                  image: "assets/images/pepper.png",
                  text: "Bell Pepper Red",
                  quantity: "1kg, Price",
                  price: 4.99,
                ),

                CartOption(
                  image: "assets/images/eggss.png",
                  text: "Egg Chicken Red",
                  quantity: "4pcs, Price",
                  price: 1.99,
                ),

                CartOption(
                  image: "assets/images/banana.png",
                  text: "Organic Bananas",
                  quantity: "12kg, Price",
                  price: 3.00,
                ),

                CartOption(
                  image: "assets/images/potatoes.png",
                  text: "Ginger",
                  quantity: "250gm, Price",
                  price: 2.98,
                ),
              ],
            ),

            SizedBox(height: 25.h),

            CustomButton(
              text: "Go to Checkout",
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  builder: (context) {
                    return const CheckoutBottomSheet();
                  },
                );
              },
            ),

            SizedBox(height: 25.h),
          ],
        ),
      ),
    );
  }
}
