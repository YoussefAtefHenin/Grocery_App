import 'package:flutter/material.dart';

class AccountOption extends StatelessWidget {
  final IconData icon;
  final String text;

  const AccountOption({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            children: [
              Icon(icon, size: 23, color: Color(0xff181725)),

              SizedBox(width: 22),

              Expanded(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff181725),
                  ),
                ),
              ),

              Icon(Icons.arrow_forward_ios, size: 21, color: Color(0xff181725)),
            ],
          ),
        ),

        Divider(thickness: 1.5, color: Color(0xffE2E2E2)),
      ],
    );
  }
}
