import 'package:flutter/material.dart';
import 'package:grocery_app/screens/bottom_nav_bar_screen.dart';
import 'package:grocery_app/widgets/custom_button.dart';

class OrderAcceptScreen extends StatefulWidget {
  const OrderAcceptScreen({super.key});

  @override
  State<OrderAcceptScreen> createState() => _OrderAcceptScreenState();
}

class _OrderAcceptScreenState extends State<OrderAcceptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 150),
            Center(
              child: Image.asset(
                "assets/images/order_accept.png",
                height: 240,
                width: 270,
              ),
            ),
            SizedBox(height: 66),
            Text(
              "Your Order has been",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Color(0xff181725),
              ),
            ),
            Text(
              "accepted",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Color(0xff181725),
              ),
            ),
            SizedBox(height: 20),
            Text(
              textAlign: TextAlign.center,
              "Your items has been placcd and is on \nit's way to being processed",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff7C7C7C),
              ),
            ),

            SizedBox(height: 134),
            CustomButton(text: "Track Order", onTap: () {}),
            SizedBox(height: 24),

            InkWell(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BottomNavBarScreen(),
                  ),
                  (route) => false,
                );
              },
              child: Text(
                "Back to home",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff181725),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
