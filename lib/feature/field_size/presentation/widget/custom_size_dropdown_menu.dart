import 'package:flutter/material.dart';

class CustomSizeDropdownMenu extends StatelessWidget {
  const CustomSizeDropdownMenu({
    super.key,
    this.fontSize = 16,
    this.width,
    this.height,
    this.keyboardType = TextInputType.text,
    this.isDende = true,
    this.contentPadding,
  });

  final double fontSize;
  final double? width;
  final double? height;
  final TextInputType keyboardType;
  final bool isDende;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return CustomDropdownMenu(
      height: height,
      width: width,
      fontSize: fontSize,
      keyboardType: keyboardType,
      isDende: isDende,
      contentPadding: contentPadding,
    );
  }
}

class CustomDropdownMenu extends StatelessWidget {
  const CustomDropdownMenu({
    super.key,
    this.fontSize = 16,
    this.keyboardType = TextInputType.text,
    this.isDende = true,
    this.width,
    this.height,
    this.contentPadding,
  });

  final double? width;
  final double? height;
  final double fontSize;
  final TextInputType keyboardType;
  final bool isDende;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      textStyle: TextStyle(
        fontFamily: 'NotoSansJP',
        fontWeight: FontWeight.w400,
        fontSize: fontSize,
        // 何もフォントは入れない場合、Androidでは1.5だった。
      ),
      inputDecorationTheme: InputDecorationTheme(
        // width : 1.0
        border: const OutlineInputBorder(),
        contentPadding: contentPadding,
        constraints: BoxConstraints(
          minHeight: height ?? 0,
          maxHeight: height ?? double.infinity,
          minWidth: width ?? 0,
          maxWidth: width ?? double.infinity,
        ),
        isDense: isDende,
      ),
      dropdownMenuEntries: const [
        DropdownMenuEntry<String>(
          value: 'あいうえお',
          label: 'あいうえお',
        ),
        DropdownMenuEntry<String>(
          value: 'かきくけこ',
          label: 'かきくけこ',
        ),
        DropdownMenuEntry<String>(
          value: 'さしすせそ',
          label: 'さしすせそ',
        ),
      ],
      onSelected: (value) => (),
    );
  }
}
