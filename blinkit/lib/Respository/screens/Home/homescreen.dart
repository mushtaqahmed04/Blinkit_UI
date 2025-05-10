import 'package:blinkit/Respository/Widgets/uihelper.dart';
import 'package:blinkit/domain/constant/Appcolor.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {

  var data = [
  {"img" : "image 50.png", "text" : "Lights, Diyas & Candles"},
  {"img" : "image 51.png", "text" : "Diwali"}, 
  {"img" : "image 52.png", "text" : "Appliances & Gadgets"},
  {"img" : "image 53.png", "text" : "Home & Living"},
  ];

  Homescreen({super.key});

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
                  color: Appcolor.red,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Uihelper.AddText(
                            text: "Blinkit pk",
                            color: Colors.white,
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
                            color: Colors.white,
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
                            color: Colors.white,
                            fontweight: FontWeight.w700,
                            fontsize: 15,
                            fontfamily: "bold",
                          ),
                          Uihelper.AddText(
                            text: " - Sujal Dave, Ratanada, Jodhpur (khi) ",
                            color: Colors.white,
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
                          cursorColor: Colors.white,
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
                    backgroundColor: Colors.black,
                    child: Icon(Icons.person, color: Colors.white, size: 30),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2,
            ),
           Container(
             height: 255,
              width: double.infinity,
              color: Appcolor.zomatored,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Uihelper.AddImage(img: "image 60.png"),
                      Uihelper.AddImage(img: "image 55.png"),
                      Uihelper.AddText(text: "Mega Diwali Sale", color: Colors.white, fontweight: FontWeight.w600, fontsize: 20,fontfamily: "PT serif"),
                      Uihelper.AddImage(img: "image 55.png"),
                      Uihelper.AddImage(img: "image 60.png"),
                    ],
                  ), 
                  ListView.builder(itemBuilder: (context ,index){
                    return Container(
                      height: 50,
                    );
                  })
                ],
              ),
            ),
          ]
        ),
      ),
    );
  }
}
