import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/custom_button.dart';
import 'package:grocery_app/widgets/product_sliders.dart';

class ProductDetail extends StatelessWidget {
  final int num = 1;

  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 390,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffF2F3F2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.arrow_back_ios, size: 25),
                          Icon(Icons.download_outlined, size: 25),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    ProductSliders(
                      height: 200,
                      width: 330,
                      images: [
                        "assets/images/apple.png",
                        "assets/images/banana.png",
                        "assets/images/apple.png",
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Naturel Red Apple",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff181725),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.favorite_outline,
                        size: 27,
                        color: Color(0xff7C7C7C),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    "1kg, Price",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff7C7C7C),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            const Icon(
                              Icons.remove,
                              size: 35,
                              color: Color(0xffB3B3B3),
                            ),
                            const SizedBox(width: 14),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xffE2E2E2),
                                ),
                                borderRadius: BorderRadius.circular(17),
                              ),
                              child: Center(
                                child: Text(
                                  num.toString(),
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff181725),
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(width: 14),

                            const Icon(
                              Icons.add,
                              size: 35,
                              color: Color(0xff53B175),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '\$4.99',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff181725),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Divider(thickness: 1.5, color: Color(0xffE2E2E2)),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Product Detail",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff181725),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_downward_outlined,
                        size: 27,
                        color: Color(0xff181725),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff7C7C7C),
                    ),
                  ),
                  SizedBox(height: 8),
                  Divider(thickness: 1.5, color: Color(0xffE2E2E2)),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Nutritions",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff181725),
                          ),
                        ),
                      ),

                      Container(
                        height: 18,
                        width: 33.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 233, 228, 228),
                        ),
                        child: Center(
                          child: Text(
                            "100gr",
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff7C7C7C),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Color(0xff181725),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Divider(thickness: 1.5, color: Color(0xffE2E2E2)),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Review",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff181725),
                          ),
                        ),
                      ),

                      Image.asset("assets/images/stars.png"),
                      SizedBox(width: 10),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Color(0xff181725),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  CustomButton(text: "Add To Basket", onTap: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
