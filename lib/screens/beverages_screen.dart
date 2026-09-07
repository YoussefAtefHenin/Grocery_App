import 'package:flutter/material.dart';
import 'package:grocery_app/models/product_model.dart';
import 'package:grocery_app/screens/filter_screen.dart';
import 'package:grocery_app/widgets/product_item.dart';

class BeveragesScreen extends StatelessWidget {
  BeveragesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.arrow_back_ios),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Beverages",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff181725),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FilterScreen(),
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(20),
                    child: Icon(Icons.tune, size: 25, color: Color(0xff181725)),
                  ),
                ],
              ),
              SizedBox(height: 26),
              Expanded(
                child: GridView.builder(
                  itemCount: Products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.68,
                  ),
                  itemBuilder: (context, index) {
                    return ProductItem(product: Products[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<ProductModel> Products = [
    ProductModel(
      image: "assets/images/diet_coke.png",
      name: "Diet Cokes",
      quantity: "355ml, Price",
      price: 1.99,
    ),
    ProductModel(
      image: "assets/images/sprite_can.png",
      name: "Sprite Can",
      quantity: "325ml, Price",
      price: 1.50,
    ),
    ProductModel(
      image: "assets/images/apple_juice.png",
      name: "Apple Juice",
      quantity: "2L, Price",
      price: 15.99,
    ),
    ProductModel(
      image: "assets/images/orange_juice.png",
      name: "Orenge Juice",
      quantity: "2L, Price",
      price: 15.99,
    ),
    ProductModel(
      image: "assets/images/sprite_can.png",
      name: "Sprite Can",
      quantity: "325ml, Price",
      price: 1.50,
    ),
    ProductModel(
      image: "assets/images/diet_coke.png",
      name: "Diet Cokes",
      quantity: "355ml, Price",
      price: 1.99,
    ),
    ProductModel(
      image: "assets/images/orange_juice.png",
      name: "Orenge Juice",
      quantity: "2L, Price",
      price: 15.99,
    ),
    ProductModel(
      image: "assets/images/apple_juice.png",
      name: "Apple Juice",
      quantity: "2L, Price",
      price: 15.99,
    ),
  ];
}
