import 'package:blinkit/Respository/Widgets/uihelper.dart';
import 'package:blinkit/domain/constant/Appcolor.dart';
import 'package:flutter/material.dart';

class Cartscreen extends StatelessWidget {
  const Cartscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 236, 239, 240),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Appcolor.background,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Uihelper.AddText(
                            text: "Blinkit pk",
                            color: Colors.black,
                            fontweight: FontWeight.w700,
                            fontsize: 15,
                            fontfamily: "bold",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Uihelper.AddText(
                            text: "16 minutes",
                            color: Colors.black,
                            fontweight: FontWeight.w700,
                            fontsize: 25,
                            fontfamily: "bold",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Uihelper.AddText(
                            text: "HOME",
                            color: Colors.black,
                            fontweight: FontWeight.w700,
                            fontsize: 15,
                            fontfamily: "bold",
                          ),
                          Uihelper.AddText(
                            text: " - Sujal Dave, Ratanada, Jodhpur (khi) ",
                            color: Colors.black,
                            fontweight: FontWeight.w700,
                            fontsize: 13,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 45,
                        width: 370,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            hintText: "Search 'Ice cream'",
                            prefixIcon: Icon(Icons.search),
                            suffixIcon: Icon(Icons.mic),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 350,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, color: Colors.black, size: 30),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Uihelper.AddImage(img: "shopping-cart (1) 1.png"),
            SizedBox(height: 20),
            Uihelper.AddText(
              text: "Recordering will be easy",
              color: Colors.black,
              fontweight: FontWeight.w500,
              fontsize: 20,
            ),
            Uihelper.AddText(
              text:
                  "Items you order will show up here so you can buy \n                            them again easily",
              color: Colors.black,
              fontweight: FontWeight.w500,
              fontsize: 12,
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 20),
                Uihelper.AddText(
                  text: "Bestsellers",
                  color: Colors.black,
                  fontweight: FontWeight.bold,
                  fontsize: 20,
                  fontfamily: "bold",
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 20),
                Stack(
                  children: [
                    Uihelper.AddImage(img: "image 45.png"),
                    Positioned(
                      top: 96,
                      left: 70,
                      child: Uihelper.Addbutton(() {}),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Stack(
                  children: [
                    Uihelper.AddImage(img: "image 44.png"),
                    Positioned(
                      top: 96,
                      left: 70,
                      child: Uihelper.Addbutton(() {}),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Stack(
                  children: [
                    Uihelper.AddImage(img: "image 46.png"),
                    Positioned(
                      top: 96,
                      left: 70,
                      child: Uihelper.Addbutton(() {}),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
