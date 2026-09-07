import 'package:flutter/material.dart';
import 'package:grocery_app/models/exp_category_model.dart';
import 'package:grocery_app/widgets/category_product.dart';
import 'package:grocery_app/widgets/search_text_field.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          SizedBox(height: 8),

          Center(
            child: Text(
              "Find Products",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff181725),
              ),
            ),
          ),

          SizedBox(height: 30),

          SearchTextField(),

          SizedBox(height: 20),

          Expanded(
            child: GridView.builder(
              itemCount: categories.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.85,
              ),
              itemBuilder: (context, index) {
                return CategoryProduct(category: categories[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  List<ExpCategoryModel> categories = [
    ExpCategoryModel(
      image: "assets/images/fruits.png",
      name: "Fresh Fruits\n& Vegetable",
      color: Color(0xffE8F5E9),
      borderColor: Color(0xffC8E6C9),
    ),
    ExpCategoryModel(
      image: "assets/images/oil.png",
      name: "Cooking Oil\n& Ghee",
      color: Color(0xfffff4e8),
      borderColor: Color(0xffffd9b3),
    ),
    ExpCategoryModel(
      image: "assets/images/fish.png",
      name: "Meat & Fish",
      color: Color(0xffffe9e7),
      borderColor: Color(0xffffc7c2),
    ),
    ExpCategoryModel(
      image: "assets/images/snacks.png",
      name: "Bakery & Snacks",
      color: Color(0xfff5eafa),
      borderColor: Color(0xffdfc5eb),
    ),
    ExpCategoryModel(
      image: "assets/images/eggs.png",
      name: "Dairy & Eggs",
      color: Color(0xfffff8e5),
      borderColor: Color(0xffffe5a3),
    ),
    ExpCategoryModel(
      image: "assets/images/beverages.png",
      name: "Beverages",
      color: Color(0xffe9f7fd),
      borderColor: Color(0xffb9e5f5),
    ),
    ExpCategoryModel(
      image: "assets/images/pulses.png",
      name: "Pulses",
      color: Color(0xfff3e8ff),
      borderColor: Color(0xffd9bfff),
    ),
    ExpCategoryModel(
      image: "assets/images/rice.png",
      name: "Rice",
      color: Color(0xffffe5ef),
      borderColor: Color(0xffffbfd5),
    ),
  ];
}
