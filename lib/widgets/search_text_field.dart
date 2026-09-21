import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          onTapOutside: (value) {
            FocusScope.of(context).unfocus();
          },
          cursorColor: const Color(0xff53B175),

          decoration: InputDecoration(
            hintText: "Search Store",
            prefixIcon: Icon(Icons.search, size: 24.sp),
            fillColor: const Color(0xffF2F3F2),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15.r),
            ),
          ),
        ),
      ],
    );
  }
}
