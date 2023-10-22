import 'package:flutter/material.dart';

class ThemeColors {
  static const scaffold = Color(0xFFFFFFFF);
  static const transparent = Color(0x00000000);
  static const semiTrans = Color(0x60FFFFFF);
  static const dark = Color(0xFF000000);
  static const black = Color(0xFF212122);
  static const grey = Color(0xFF6D7885);
  static const red = Color(0xFFFF4141);
  static const grey1 = Color(0xFF778A9B);
  static const grey2 = Color(0xFFEBEDF0);
  static const grey3 = Color(0xFFF9F9F9);
  static const grey4 = Color(0xFFD3D2D3);
  static const grey44 = Color(0xFFF5F5F5);

  static const primary = Color(0xFFC60033);
  static const secondary = Color(0xFFFDF0F4);

  // static Color text = Colors.white.withOpacity(.87);
// the same
  static const text = Color(0xDDFFFFFF);
}






class ThemeFonts {
  static const r9 = TextStyle(
    fontSize: 9,
    color: ThemeColors.text,
    height: 1.5,
  ); //regular, size9

  static const rb9 = TextStyle(
    fontSize: 9,
    fontWeight: FontWeight.w400,
    color: ThemeColors.dark,
    height: 1.5,
  );

  static const rp10 = TextStyle(
    fontSize: 10,
    color: ThemeColors.primary,
    height: 1.5,
  );

  static const rg10 = TextStyle(
    fontSize: 10,
    color: ThemeColors.grey,
    height: 1.5,
  );

  static const r12 = TextStyle(
    fontSize: 12,
    color: ThemeColors.text,
    height: 1.5,
  ); //regular, size12

  static const rg12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: ThemeColors.grey4,
    height: 1.5,
  );



  static const rb12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: ThemeColors.black,
    height: 1.5,
  );
  static const rp12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: ThemeColors.primary,
    height: 1.5,
  );

  static const r14 = TextStyle(
    fontSize: 14,
    color: ThemeColors.text,
    height: 1.5,
  );

  static const bp14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w800,
    color: ThemeColors.primary,
    height: 1.5,
  );

  static const bw14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: ThemeColors.scaffold,
    height: 1.5,
  );

  static const rg14 = TextStyle(
    fontSize: 14,
    color: ThemeColors.grey,
    height: 1.5,
  );

  static const rb14 = TextStyle(
    fontSize: 14,
    color: ThemeColors.dark,
    height: 1.5,
  );

  static const r15 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: ThemeColors.text,
    height: 1.5,
  );

  static const rp15 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: ThemeColors.primary,
    height: 1.5,
  );

  static const bb15 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: ThemeColors.dark,
    height: 1.5,
  );

  static const br15 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: ThemeColors.red,
    height: 1.5,
  );

  static const r16 = TextStyle(
    fontSize: 16,
    color: ThemeColors.text,
    height: 1.5,
  );



  static const rd16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: ThemeColors.dark,
    height: 1.5,
  );

  static const r18 = TextStyle(
    fontSize: 18,
    color: ThemeColors.text,
    height: 1.5,
  );

  static const bb18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: ThemeColors.dark,
    height: 1.5,
  );

  static const r20 = TextStyle(
    fontSize: 20,
    color: ThemeColors.text,
    height: 1.5,
  );

  static const rp24 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w800,
    color: ThemeColors.primary,
    height: 1.5,
  );

  static const rp30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w800,
    color: ThemeColors.primary,
    height: 1.5,
  );

  static const bb32 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: ThemeColors.dark,
    height: 1.5,
  );
}
