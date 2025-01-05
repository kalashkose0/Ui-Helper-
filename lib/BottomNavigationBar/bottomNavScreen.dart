import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currIdx = 0;
  List<Widget> pages = [
    // HomeProductCategories(),
    // CropPage(),
    // CategoriesPage(),
    // agriAdvisor(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currIdx,
        children: pages,
      ),
      bottomNavigationBar: Container(
        height: 64,
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/home.png",
                  height: 30,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/crop.png",
                  height: 30,
                ),
                label: "Crop"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/categories.png",
                  height: 30,
                ),
                label: "Categories"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/advisor.png",
                  height: 30,
                ),
                label: "Agri Advisor")
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: currIdx,
          onTap: (index) {
            setState(() {
              currIdx = index;
            });
          },
        ),
      ),
    );
  }
}
