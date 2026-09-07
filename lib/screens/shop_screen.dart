import 'package:flutter/material.dart';
import 'package:grocery_app/models/categories_model.dart';
import 'package:grocery_app/models/product_model.dart';
import 'package:grocery_app/widgets/home_sliders.dart';
import 'package:grocery_app/widgets/product_item.dart';
import 'package:grocery_app/widgets/search_text_field.dart';
import 'package:grocery_app/widgets/category_item.dart';

class ShopScreen extends StatelessWidget {
  ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.71),
        child: Column(
          children: [
            SizedBox(height: 10),

            Center(child: Image.asset("assets/images/carrot.png", width: 30)),

            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on),
                Text(
                  "Dhaka, Banassre",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff4C4F4D),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            SearchTextField(),

            SizedBox(height: 20),

            HomeSliders(
              height: 119.0,
              images: [
                "https://i.pinimg.com/736x/08/de/f4/08def4297940226f4bf8e87eac76405b.jpg",
                "https://i.pinimg.com/1200x/83/35/b5/8335b51ac60872f87269bd5682ca9c53.jpg",
                "https://i.pinimg.com/1200x/e9/b1/67/e9b16750a87a69e8d182899c1a3fed8d.jpg",
              ],
            ),

            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Exclusive Offer",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    color: Color(0xff53B175),
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            SizedBox(
              height: 280,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: exclusiveProducts.length,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 10);
                },
                itemBuilder: (context, index) {
                  return ProductItem(product: exclusiveProducts[index]);
                },
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Selling",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    color: Color(0xff53B175),
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 280,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: bestSellingProducts.length,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 10);
                },
                itemBuilder: (context, index) {
                  return ProductItem(product: bestSellingProducts[index]);
                },
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Selling",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    color: Color(0xff53B175),
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            SizedBox(
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 10);
                },
                itemBuilder: (context, index) {
                  // final category = categories[index];

                  return CategoryItem(categories: categories[index]);
                },
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 280,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: groceryProducts.length,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 10);
                },
                itemBuilder: (context, index) {
                  return ProductItem(product: groceryProducts[index]);
                },
              ),
            ),
            SizedBox(height: 120),
          ],
        ),
      ),
    );
  }

  List<ProductModel> exclusiveProducts = [
    ProductModel(
      image: "assets/images/banana.png",
      name: "Organic Bananas",
      quantity: "7pcs, Priceg",
      price: 5.3,
    ),
    ProductModel(
      image: "assets/images/apple.png",
      name: "Red Apple",
      quantity: "1kg, Priceg",
      price: 7.3,
    ),
    ProductModel(
      image: "assets/images/banana.png",
      name: "Organic Bananas",
      quantity: "7pcs, Priceg",
      price: 3.3,
    ),
    ProductModel(
      image: "assets/images/apple.png",
      name: "Red Apple",
      quantity: "1kg, Priceg",
      price: 12.3,
    ),
  ];
  List<ProductModel> bestSellingProducts = [
    ProductModel(
      image: "assets/images/pepper.png",
      name: "Fresh Tomato",
      quantity: "1kg, Priceg",
      price: 5.3,
    ),
    ProductModel(
      image: "assets/images/potatoes.png",
      name: "Fresh Cabbage",
      quantity: "1kg, Priceg",
      price: 7.3,
    ),
    ProductModel(
      image: "assets/images/pepper.png",
      name: "Fresh Tomato",
      quantity: "1kg, Priceg",
      price: 3.3,
    ),
    ProductModel(
      image: "assets/images/potatoes.png",
      name: "Fresh Cabbage",
      quantity: "1kg, Priceg",
      price: 12.3,
    ),
  ];
  List<ProductModel> groceryProducts = [
    ProductModel(
      image: "assets/images/beef.png",
      name: "Beef Bone",
      quantity: "1kg, Priceg",
      price: 5.3,
    ),
    ProductModel(
      image: "assets/images/chicken.png",
      name: "Broiler Chicken",
      quantity: "1kg, Priceg",
      price: 7.3,
    ),
    ProductModel(
      image: "assets/images/beef.png",
      name: "Beef Bone",
      quantity: "1kg, Priceg",
      price: 3.3,
    ),
    ProductModel(
      image: "assets/images/chicken.png",
      name: "Broiler Chicken",
      quantity: "1kg, Priceg",
      price: 12.3,
    ),
  ];

  List<CategoriesModel> categories = [
    CategoriesModel(
      image: "assets/images/pulses.png",
      name: "Pulses",
      color: Color(0xffFDEBD0),
    ),
    CategoriesModel(
      image: "assets/images/rice.png",
      name: "Rice",
      color: Color(0xffE8F5E9),
    ),
    CategoriesModel(
      image: "assets/images/pulses.png",
      name: "Pulses",
      color: Color(0xffFDEBD0),
    ),
    CategoriesModel(
      image: "assets/images/rice.png",
      name: "Rice",
      color: Color(0xffE8F5E9),
    ),
  ];
}
