import 'package:blinkit/Respository/Widgets/uihelper.dart';
import 'package:blinkit/domain/constant/Appcolor.dart';
import 'package:flutter/material.dart';

class Printscreen extends StatelessWidget {
  const Printscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(247, 203, 69, 0.2),
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
            SizedBox(height: 50),
            Uihelper.AddText(
              text: "Print Store",
              color: Colors.black,
              fontweight: FontWeight.w600,
              fontsize: 40,
              fontfamily: "bold",
            ),
            Uihelper.AddText(
              text: "Blinkit ensures secure prints at every stage",
              color: Colors.grey,
              fontweight: FontWeight.w200,
              fontsize: 15,
            ),
            SizedBox(height: 50),
            Stack(
              children: [
                Container(
                  height: 220,
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Uihelper.AddText(
                          text: "Documents",
                          color: Colors.black,
                          fontweight: FontWeight.w200,
                          fontsize: 20,
                        ),
                        SizedBox(height: 5),
                        Uihelper.AddText(
                          text: "✦  Price starting at rs 3/page",
                          color: Colors.grey,
                          fontweight: FontWeight.w200,
                          fontsize: 17,
                        ),
                        Uihelper.AddText(
                          text: "✦  Paper quality: 70 GSM",
                          color: Colors.grey,
                          fontweight: FontWeight.w200,
                          fontsize: 17,
                        ),
                        Uihelper.AddText(
                          text: "✦  Single side prints",
                          color: Colors.grey,
                          fontweight: FontWeight.w200,
                          fontsize: 17,
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 170,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.green,
                          ),
                          child: Center(
                            child: Uihelper.AddText(text: "Upload Files", color: Colors.white, fontweight: FontWeight.w800, fontsize: 18, fontfamily: "bold"),
                          )
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 300,
                  child:Uihelper.AddImage(img: "image 62.png")
                 ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
