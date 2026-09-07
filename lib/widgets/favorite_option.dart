import 'package:flutter/material.dart';

class FavoriteOption extends StatelessWidget {
  final String image;
  final String text;
  final String quantity;
  final double price;
  const FavoriteOption({
    super.key,
    required this.image,
    required this.text,
    required this.quantity,
    required this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(image, width: 56, height: 56),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff181725),
                    ),
                  ),
                  Text(
                    quantity,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff7C7C7C),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Text(
              "\$$price",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff181725),
              ),
            ),
            SizedBox(width: 10),
            Icon(Icons.arrow_forward_ios, size: 21, color: Color(0xff181725)),
          ],
        ),
        SizedBox(height: 17),
        Divider(thickness: 1.5, color: Color(0xffE2E2E2)),
      ],
    );
  }
}
