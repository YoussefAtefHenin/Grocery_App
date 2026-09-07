import 'package:flutter/material.dart';
import 'package:grocery_app/screens/onbording_screen.dart';
import 'package:grocery_app/widgets/account_info.dart';
import 'package:grocery_app/widgets/account_option.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 15),

            AccountInfo(),

            SizedBox(height: 20),

            Divider(thickness: 1.5, color: Color(0xffE2E2E2)),

            AccountOption(icon: Icons.inventory_2_outlined, text: "Orders"),

            AccountOption(icon: Icons.badge_outlined, text: "My Details"),

            AccountOption(
              icon: Icons.location_on_outlined,
              text: "Delivery Address",
            ),

            AccountOption(
              icon: Icons.credit_card_outlined,
              text: "Payment Methods",
            ),

            AccountOption(
              icon: Icons.local_activity_outlined,
              text: "Promo Cord",
            ),

            AccountOption(
              icon: Icons.notifications_none_outlined,
              text: "Notifecations",
            ),

            AccountOption(icon: Icons.help_outline, text: "Help"),

            AccountOption(icon: Icons.info_outline, text: "About"),

            SizedBox(height: 49),

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
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  color: Color(0xffF2F3F2),
                ),

                child: Stack(
                  children: [
                    Positioned(
                      left: 25,
                      top: 0,
                      bottom: 0,
                      child: Icon(Icons.logout, color: Color(0xff53B175)),
                    ),

                    Center(
                      child: Text(
                        "Log Out",
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff53B175),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
