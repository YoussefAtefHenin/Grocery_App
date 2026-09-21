import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/widgets/custom_button.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool eggs = true;
  bool noodles = false;
  bool chips = false;
  bool fastFood = false;

  bool individualCollection = false;
  bool cocola = true;
  bool ifad = false;
  bool kaziFarmas = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 8.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    borderRadius: BorderRadius.circular(20.r),
                    child: Icon(
                      Icons.close,
                      size: 30.sp,
                      color: const Color(0xff181725),
                    ),
                  ),
                  SizedBox(width: 119.w),
                  Text(
                    "Filters",
                    style: TextStyle(
                      fontSize: 23.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff181725),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32.h),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffF2F3F2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25.w,
                    vertical: 25.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff181725),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      checkBox(
                        title: "Eggs",
                        value: eggs,
                        onTap: () {
                          setState(() {
                            eggs = !eggs;
                          });
                        },
                      ),
                      checkBox(
                        title: "Noodles & Pasta",
                        value: noodles,
                        onTap: () {
                          setState(() {
                            noodles = !noodles;
                          });
                        },
                      ),
                      checkBox(
                        title: "Chips & Crisps",
                        value: chips,
                        onTap: () {
                          setState(() {
                            chips = !chips;
                          });
                        },
                      ),
                      checkBox(
                        title: "Fast Food",
                        value: fastFood,
                        onTap: () {
                          setState(() {
                            fastFood = !fastFood;
                          });
                        },
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Brand",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff181725),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      checkBox(
                        title: "Individual Collection",
                        value: individualCollection,
                        onTap: () {
                          setState(() {
                            individualCollection = !individualCollection;
                          });
                        },
                      ),
                      checkBox(
                        title: "Cocola",
                        value: cocola,
                        onTap: () {
                          setState(() {
                            cocola = !cocola;
                          });
                        },
                      ),
                      checkBox(
                        title: "Ifad",
                        value: ifad,
                        onTap: () {
                          setState(() {
                            ifad = !ifad;
                          });
                        },
                      ),
                      checkBox(
                        title: "Kazi Farmas",
                        value: kaziFarmas,
                        onTap: () {
                          setState(() {
                            kaziFarmas = !kaziFarmas;
                          });
                        },
                      ),
                      SizedBox(height: 195.h),
                      CustomButton(text: "Apply Filter", onTap: () {}),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget checkBox({
    required String title,
    required bool value,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 40.h,
        child: Row(
          children: [
            Checkbox(
              value: value,
              onChanged: (value) {},
              activeColor: const Color(0xff53B175),
              side: BorderSide(color: const Color(0xffBDBDBD), width: 1.2.w),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r),
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: value
                    ? const Color(0xff53B175)
                    : const Color(0xff181725),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
