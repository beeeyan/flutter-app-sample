import 'package:flutter/material.dart';

class CustomSizeTextField extends StatelessWidget {
  const CustomSizeTextField({
    super.key,
    this.controller,
    this.fontSize = 16,
    this.width,
    this.height,
    this.maxLength,
    this.maxLines,
    this.keyboardType = TextInputType.text,
  });

  final TextEditingController? controller;
  final double fontSize;
  final double? width;
  final double? height;
  final int? maxLength;
  final int? maxLines;

  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return (width != null || height != null)
    // widthとheightがnullでない場合
    // SizedBoxでサイズを強制的に変更する。
        ? SizedBox(
            width: width,
            height: height,
            child: CustomTextField(
              controller: controller,
              fontSize: fontSize,
              maxLength: maxLength,
              maxLines: maxLines,
              keyboardType: keyboardType,
            ),
          )
        : CustomTextField(
            controller: controller,
            fontSize: fontSize,
            maxLength: maxLength,
            maxLines: maxLines,
            keyboardType: keyboardType,
          );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.fontSize = 16,
    this.maxLength,
    this.maxLines,
    this.keyboardType = TextInputType.text,
  });

  final TextEditingController? controller;
  final double fontSize;
  final int? maxLength;
  final int? maxLines;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        fontSize: fontSize,
      ),
      controller: controller,
      maxLength: maxLength,
      maxLines: maxLines,
      keyboardType: keyboardType,
      decoration: const InputDecoration(
        // width : 1.0
        border: OutlineInputBorder(),
      ),
    );
  }
}
