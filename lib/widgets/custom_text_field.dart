import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final Widget? suffix;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    required this.labelText,
    this.obscureText = false,
    this.suffix,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (value) {
        FocusScope.of(context).unfocus();
      },
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: const Color(0xffE2E2E2), width: 1.w),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: const Color(0xff53B175), width: 1.w),
        ),
        labelText: labelText,
        suffix: suffix,
      ),
      validator: validator,
    );
  }
}
