import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/cart_option.dart';
import 'package:grocery_app/widgets/custom_button.dart';
import 'package:grocery_app/widgets/checkout_bottom_sheet.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 15),

            const Center(
              child: Text(
                "My Cart",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff181725),
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Divider(thickness: 1.5, color: Color(0xffE2E2E2)),

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

            const SizedBox(height: 25),

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

            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
