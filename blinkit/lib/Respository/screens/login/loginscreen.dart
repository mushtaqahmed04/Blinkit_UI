import 'package:flutter/material.dart';
import 'package:blinkit/Respository/Bottomnavbar/BottomnavScreen.dart';
import 'package:blinkit/Respository/Widgets/uihelper.dart';
import 'package:blinkit/domain/constant/Appcolor.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Uihelper.AddImage(img: "main img.png"),
            SizedBox(height: 20),
            Uihelper.AddImage(img: "image 10.png"),
            SizedBox(height: 20),
            Uihelper.AddText(
              text: "World last minute app",
              color: Colors.black,
              fontweight: FontWeight.bold,
              fontsize: 20,
            ),
            SizedBox(height: 30),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              child: Container(
                height: 250,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 25),
                    Uihelper.AddText(
                      text: "Uzair",
                      color: Colors.black,
                      fontweight: FontWeight.w500,
                      fontsize: 15,
                    ),
                    SizedBox(height: 15),
                    Uihelper.AddText(
                      text: "78277XXXX",
                      color: Colors.grey,
                      fontweight: FontWeight.w500,
                      fontsize: 15,
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Bottomnavscreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Appcolor.zomatored,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Uihelper.AddText(
                              text: "Login with ",
                              color: Colors.white,
                              fontweight: FontWeight.w700,
                              fontsize: 15,
                            ),
                            Uihelper.AddImage(img: "image 9.png"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Uihelper.AddText(
                      text:
                          "Access your saved addresses from Zomato automatically!",
                      color: Colors.grey,
                      fontweight: FontWeight.w300,
                      fontsize: 11,
                    ),
                    SizedBox(height: 40),
                    Uihelper.AddText(
                      text: "or Login with phone number ",
                      color: Colors.green,
                      fontweight: FontWeight.w500,
                      fontsize: 15,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
