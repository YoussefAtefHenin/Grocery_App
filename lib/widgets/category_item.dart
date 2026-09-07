import 'package:flutter/material.dart';
import 'package:grocery_app/models/categories_model.dart';

class CategoryItem extends StatelessWidget {
  final CategoriesModel categories;

  const CategoryItem({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 248,
      height: 105,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: categories.color,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Image.asset(
            categories.image,
            // width: 70,
            // height: 70,
            fit: BoxFit.contain,
          ),

          SizedBox(width: 15),

          Text(
            categories.name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
