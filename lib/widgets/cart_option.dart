import 'package:flutter/material.dart';

class CartOption extends StatelessWidget {
  final String image;
  final String text;
  final String quantity;
  final double price;

  const CartOption({
    super.key,
    required this.image,
    required this.text,
    required this.quantity,
    required this.price,
  });

  final int num = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 70,
                height: 70,
                child: Image.asset(image, fit: BoxFit.contain),
              ),

              const SizedBox(width: 17),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            text,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff181725),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),

                        const Icon(
                          Icons.close,
                          size: 25,
                          color: Color(0xffB3B3B3),
                        ),
                      ],
                    ),

                    const SizedBox(height: 2),

                    Text(
                      quantity,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff7C7C7C),
                      ),
                    ),

                    const SizedBox(height: 12),

                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xffE2E2E2),
                                  ),
                                  borderRadius: BorderRadius.circular(17),
                                ),
                                child: const Icon(
                                  Icons.remove,
                                  size: 35,
                                  color: Color(0xffB3B3B3),
                                ),
                              ),

                              const SizedBox(width: 14),

                              Text(
                                num.toString(),
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff181725),
                                ),
                              ),

                              const SizedBox(width: 14),

                              Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xffE2E2E2),
                                  ),
                                  borderRadius: BorderRadius.circular(17),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  size: 35,
                                  color: Color(0xff53B175),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '\$$price',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff181725),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        Divider(thickness: 1.5, color: Color(0xffE2E2E2)),
      ],
    );
  }
}
