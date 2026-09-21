import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/screens/onbording_screen.dart';
import 'package:grocery_app/widgets/account_info.dart';
import 'package:grocery_app/widgets/account_option.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 15.h),

            const AccountInfo(),

            SizedBox(height: 20.h),

            Divider(thickness: 1.5.w, color: const Color(0xffE2E2E2)),

            const AccountOption(
              icon: Icons.inventory_2_outlined,
              text: "Orders",
            ),

            const AccountOption(icon: Icons.badge_outlined, text: "My Details"),

            const AccountOption(
              icon: Icons.location_on_outlined,
              text: "Delivery Address",
            ),

            const AccountOption(
              icon: Icons.credit_card_outlined,
              text: "Payment Methods",
            ),

            const AccountOption(
              icon: Icons.local_activity_outlined,
              text: "Promo Cord",
            ),

            const AccountOption(
              icon: Icons.notifications_none_outlined,
              text: "Notifecations",
            ),

            const AccountOption(icon: Icons.help_outline, text: "Help"),

            const AccountOption(icon: Icons.info_outline, text: "About"),

            SizedBox(height: 49.h),

            InkWell(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OnbordingScreen(),
                  ),
                  (route) => false,
                );
              },
              child: Container(
                height: 70.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19.r),
                  color: const Color(0xffF2F3F2),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 25.w,
                      top: 0,
                      bottom: 0,
                      child: Icon(
                        Icons.logout,
                        color: const Color(0xff53B175),
                        size: 24.sp,
                      ),
                    ),

                    Center(
                      child: Text(
                        "Log Out",
                        style: TextStyle(
                          fontSize: 17.sp,
                          color: const Color(0xff53B175),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}
