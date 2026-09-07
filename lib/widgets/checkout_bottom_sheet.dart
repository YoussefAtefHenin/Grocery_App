import 'package:flutter/material.dart';
import 'package:grocery_app/screens/order_accept_screen.dart';
import 'package:grocery_app/widgets/custom_button.dart';

class CheckoutBottomSheet extends StatelessWidget {
  const CheckoutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Checkout",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff181725),
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                borderRadius: BorderRadius.circular(20),
                child: Icon(Icons.close, size: 25, color: Color(0xff181725)),
              ),
            ],
          ),

          SizedBox(height: 20),

          Divider(color: Color(0xffE2E2E2)),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Delivery",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff7C7C7C),
                    ),
                  ),
                ),
                Text(
                  "Select Method",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff181725),
                  ),
                ),
                SizedBox(width: 6),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 23,
                  color: Color(0xff181725),
                ),
              ],
            ),
          ),

          Divider(color: Color(0xffE2E2E2)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Pament",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff7C7C7C),
                    ),
                  ),
                ),
                Container(
                  height: 16,
                  width: 21.6,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(27),
                    image: DecorationImage(
                      image: Image.asset("assets/images/card (1).png").image,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(width: 6),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 23,
                  color: Color(0xff181725),
                ),
              ],
            ),
          ),

          Divider(color: Color(0xffE2E2E2)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Promo Code",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff7C7C7C),
                    ),
                  ),
                ),
                Text(
                  "Pick discount",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff181725),
                  ),
                ),
                SizedBox(width: 6),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 23,
                  color: Color(0xff181725),
                ),
              ],
            ),
          ),

          Divider(color: Color(0xffE2E2E2)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Total Cost",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff7C7C7C),
                    ),
                  ),
                ),
                Text(
                  "\$13.97",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff181725),
                  ),
                ),
                SizedBox(width: 6),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 23,
                  color: Color(0xff181725),
                ),
              ],
            ),
          ),

          Divider(color: Color(0xffE2E2E2)),
          SizedBox(height: 15),

          Row(
            children: [
              Text(
                textAlign: TextAlign.start,
                "By placing an order you agree to our\n"
                "Terms And Conditions",

                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff7C7C7C),
                ),
              ),
            ],
          ),

          SizedBox(height: 25),
          CustomButton(
            text: "Place Order",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OrderAcceptScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
