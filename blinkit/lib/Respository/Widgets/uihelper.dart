import 'package:flutter/material.dart';

class Uihelper {
  static AddImage({required String img}) {
    return Image.asset("asset/Image/$img");
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
}
