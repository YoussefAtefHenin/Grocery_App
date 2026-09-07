import 'package:flutter/material.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 64,
          width: 64,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(27),
            image: DecorationImage(
              image: Image.asset("assets/images/profile2.jpg").image,
            ),
          ),
        ),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Afsar Hossen",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff181725),
                  ),
                ),
                SizedBox(width: 4),

                Icon(Icons.edit_outlined, size: 20, color: Color(0xff53B175)),
              ],
            ),
            Text(
              "Imshuvo97@gmail.com",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff7C7C7C),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
