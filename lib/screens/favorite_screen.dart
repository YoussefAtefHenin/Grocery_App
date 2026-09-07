import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/custom_button.dart';
import 'package:grocery_app/widgets/favorite_option.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 15),

            Center(
              child: Text(
                "Favorurite",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff181725),
                ),
              ),
            ),

            SizedBox(height: 20),

            Divider(thickness: 1.5, color: Color(0xffE2E2E2)),

            SizedBox(height: 17),
            FavoriteOption(
              image: "assets/images/sprite_can.png",
              text: "Sprite Can",
              quantity: "325ml, Price",
              price: 1.50,
            ),
            SizedBox(height: 17),
            FavoriteOption(
              image: "assets/images/diet_coke.png",
              text: "Diet Coke",
              quantity: "325ml, Price",
              price: 1.99,
            ),
            SizedBox(height: 17),
            FavoriteOption(
              image: "assets/images/apple_juice.png",
              text: "Apple & Grape Juice",
              quantity: "2L, Price",
              price: 12.99,
            ),
            SizedBox(height: 17),
            FavoriteOption(
              image: "assets/images/sprite_can.png",
              text: "Sprite Can",
              quantity: "325ml, Price",
              price: 1.50,
            ),
            SizedBox(height: 17),
            FavoriteOption(
              image: "assets/images/diet_coke.png",
              text: "Diet Coke",
              quantity: "325ml, Price",
              price: 1.99,
            ),

            SizedBox(height: 50),
            CustomButton(text: "Add All To Cart", onTap: () {}),
          ],
        ),
      ),
    );
  }
}
