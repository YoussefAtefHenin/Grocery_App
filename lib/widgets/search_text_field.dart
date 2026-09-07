import 'package:flutter/material.dart';

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
          cursorColor: Color(0xff53B175),

          decoration: InputDecoration(
            hintText: "Search Store",
            prefixIcon: Icon(Icons.search),
            fillColor: Color(0xffF2F3F2),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ],
    );
  }
}
