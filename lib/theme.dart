import 'package:flutter/material.dart';

//primary color  앱의 브랜드 색상
// secondary color(accent color) = 앱의 버튼 or 상호작용 하는 이벤트 종류들의 색상

ThemeData theme() {
  return ThemeData(
    primaryColor: Colors.black, //앱의 브랜드 색상
    appBarTheme: AppBarTheme(
      color: Colors.black,
      iconTheme: IconThemeData(color: Colors.white),
    ),
  );
}
