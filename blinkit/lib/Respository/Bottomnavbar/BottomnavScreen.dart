import 'package:flutter/material.dart';
import 'package:blinkit/Respository/Widgets/uihelper.dart';
import 'package:blinkit/Respository/screens/Cart/cartscreen.dart';
import 'package:blinkit/Respository/screens/Catagory/catagoryscreen.dart';
import 'package:blinkit/Respository/screens/Home/homescreen.dart';
import 'package:blinkit/Respository/screens/Print/printscreen.dart';

class Bottomnavscreen extends StatefulWidget {
  const Bottomnavscreen({super.key});

  @override
  State<Bottomnavscreen> createState() => _BottomnavscreenState();
}

class _BottomnavscreenState extends State<Bottomnavscreen> {
  int curentIndex = 0;
  List<Widget> pages = [
    Homescreen(),
    Cartscreen(),
    Catagoryscreen(),
    Printscreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: curentIndex ,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Uihelper.AddImage(img: "home 1.png"),label: "Home"),
          BottomNavigationBarItem(
            icon: Uihelper.AddImage(img: "shopping-bag 1.png"),label: "Card"
          ),
          BottomNavigationBarItem(
            icon: Uihelper.AddImage(img: "category 1.png"),label: "Categories"
          ),
          BottomNavigationBarItem(
            icon: Uihelper.AddImage(img: "printer 1.png"),label: "Print"
          ),
        ],type: BottomNavigationBarType.fixed,
        currentIndex: curentIndex,onTap: (index) {
            setState(() {
              curentIndex = index;
            });
        }
      ),
    );
  }
}
