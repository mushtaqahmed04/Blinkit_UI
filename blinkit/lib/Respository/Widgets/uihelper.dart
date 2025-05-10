import 'package:flutter/material.dart';

class Uihelper {
  static AddImage({required String img}) {
    return Image.asset("asset/Image/$img", fit: BoxFit.fill);
  }

  static AddText({
    required String text,
    required Color color,
    required FontWeight fontweight,
    String? fontfamily,
    required double fontsize,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: fontfamily ?? "regular",
        fontWeight: fontweight,
        fontSize: fontsize,
      ),
    );
  }

  static Addbutton(VoidCallback callback) {
    return Container(
      height: 18,
      width: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color.fromRGBO(39, 175, 52, 1)),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(
          "ADD",
          style: TextStyle(fontSize: 6, color: Color.fromRGBO(39, 175, 52, 1)),
        ),
      ),
    );
  }
}
