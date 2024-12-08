import 'package:flutter/material.dart';

class CustomSizeDropdownButtonFormField extends StatelessWidget {
  const CustomSizeDropdownButtonFormField({
    super.key,
    this.controller,
    this.fontSize = 16,
    this.width,
    this.height,
    this.keyboardType = TextInputType.text,
    this.isDende = true,
    this.contentPadding,
  });

  final TextEditingController? controller;
  final double fontSize;
  final double? width;
  final double? height;
  final TextInputType keyboardType;
  final bool isDende;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return (width != null || height != null)
    // widthとheightがnullでない場合
    // SizedBoxでサイズを強制的に変更する。
        ? SizedBox(
            width: width,
            height: height,
            child: CustomDropdownButtonFormField(
              fontSize: fontSize,
              keyboardType: keyboardType,
              isDende: isDende,
              contentPadding: contentPadding,
            ),
          )
        : CustomDropdownButtonFormField(
            fontSize: fontSize,
            keyboardType: keyboardType,
            isDende: isDende,
            contentPadding: contentPadding,
          );
  }
}

class CustomDropdownButtonFormField extends StatelessWidget {
  const CustomDropdownButtonFormField({
    super.key,
    this.fontSize = 16,
    this.keyboardType = TextInputType.text,
    this.isDende = true,
    this.contentPadding,
  });

  final double fontSize;
  final TextInputType keyboardType;
  final bool isDende;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      style: TextStyle(
        color: Colors.black,
        fontFamily: 'NotoSansJP',
        fontWeight: FontWeight.w400,
        fontSize: fontSize,
        // 何もフォントは入れない場合、Androidでは1.5だった。
      ),
      decoration: InputDecoration(
        // width : 1.0
        border: const OutlineInputBorder(),
        contentPadding: contentPadding,
        isDense: isDende,
      ),
      items: const [
        DropdownMenuItem(
          value: 'あいうえお',
          child: Text('あいうえお'),
        ),
        DropdownMenuItem(
          value: 'かきくけこ',
          child: Text('かきくけこ'),
        ),
        DropdownMenuItem(
          value: 'さしすせそ',
          child: Text('さしすせそ'),
        ),
      ],
      onChanged: (value) => (),
    );
  }
}
