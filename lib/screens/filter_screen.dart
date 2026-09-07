import 'package:flutter/material.dart';
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
            SizedBox(height: 8),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    borderRadius: BorderRadius.circular(20),
                    child: Icon(
                      Icons.close,
                      size: 30,
                      color: Color(0xff181725),
                    ),
                  ),

                  SizedBox(width: 119),

                  Text(
                    "Filters",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff181725),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 32),

            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffF2F3F2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),

                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 25,
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff181725),
                        ),
                      ),

                      SizedBox(height: 10),

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

                      SizedBox(height: 20),

                      Text(
                        "Brand",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff181725),
                        ),
                      ),

                      SizedBox(height: 10),

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
                      SizedBox(height: 195),
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
        height: 40,
        child: Row(
          children: [
            Checkbox(
              value: value,
              onChanged: (value) {},
              activeColor: Color(0xff53B175),
              side: BorderSide(color: Color(0xffBDBDBD), width: 1.2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),

            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: value ? Color(0xff53B175) : Color(0xff181725),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
