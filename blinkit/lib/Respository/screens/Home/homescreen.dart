import 'package:blinkit/Respository/Widgets/uihelper.dart';
import 'package:blinkit/domain/constant/Appcolor.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {

  var data = [
  {"img" : "image 50.png", "text" : "Lights, Diyas &\nCandles"},
  {"img" : "image 51.png", "text" : "Diwali\n "}, 
  {"img" : "image 52.png", "text" : "Appliances & \nGadgets"},
  {"img" : "image 53.png", "text" : "Home & Living\n "},
  ];

  var Catagory = [
  {"img" : "image 54.png", "text" : "Golden Glass \nWooden Lid Candle"},
  {"img" : "image 57.png", "text" : "Royal Gulab Jamun\n By Bikano"}, 
  {"img" : "image 63.png", "text" : "Bikaji Bhujia \n"},
  {"img" : "image 57.png", "text" : "Royal Gulab Jamun\n By Bikano"}, 
  ];

  var list = [
  {"img" : "image 46 (1).png", "text" : "Vegetables & \nFruits"},
  {"img" : "image 46 (2).png", "text" : "Atta, Dal & \nRice"}, 
  {"img" : "image 46 (3).png", "text" : "Oil, Ghee & \nMasala"},
  {"img" : "image 46 (4).png", "text" : "Dairy, Bread & \nMilk"},
  {"img" : "image 46 (5).png", "text" : "Biscuits & \nBakery"},
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
             height: 210,
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
                  Expanded(
                    child: ListView.builder(
                      itemCount: data.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (Context,index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.pink.shade100
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(data[index]["text"].toString() ,style: TextStyle(fontWeight: FontWeight.bold),),
                            Container(
                              height: 90,
                              width: 100,
                              child :
                            Uihelper.AddImage(img: data[index]["img"].toString(), )
                        
                            )
                          ],
                        ),
                        ),
                      );
                    }),
                  )
                  
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Catagory.length,
                itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                      Uihelper.AddImage(img: Catagory[index]["img"].toString()),
                      SizedBox(
                        height: 3,
                      ),
                      Uihelper.AddText(text: Catagory[index]["text"].toString(), color: Colors.black, fontweight: FontWeight.w800, fontsize: 9),
                       SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                      Uihelper.AddImage(img: "timer 4.png"),
                      SizedBox(
                        width: 3,
                      ),
                      Uihelper.AddText(text: "16 MINS", color: Colors.grey, fontweight: FontWeight.w200, fontsize: 10,fontfamily: "regular"),
                        ],
                      ),
                      Uihelper.AddText(text: "RS 79", color: Colors.black, fontweight: FontWeight.w800, fontsize: 15,fontfamily: "bold")
                    ],
                  ),
                );
              }),
            ),
            SizedBox(
              height: 10,
            ),
            Uihelper.AddText(text: "Grocery & Kitchen", color: Colors.black, fontweight: FontWeight.bold, fontsize: 20),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
                itemBuilder: (context,index){
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue.shade100
                        ),
                        child: Stack(
                          children: [
                            Center(
                              child: SizedBox(
                                height: 60,
                                width: 60,
                                child: Uihelper.AddImage(img: list[index]["img"].toString()),
                              ),
                            )
                          ],
                        )
                      ),
                    ),
                    Uihelper.AddText(text: list[index]["text"].toString(), color: Colors.black, fontweight: FontWeight.w200, fontsize: 10)
                  ],
                );
              }),
            )
            
          ]
        ),
      ),
    );
  }
}
