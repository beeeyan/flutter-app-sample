import 'package:flutter/material.dart';
import 'package:flutter_app_sample/feature/field_size/presentation/widget/custom_size_dropdown_button_form_field.dart';
import 'package:flutter_app_sample/feature/field_size/presentation/widget/custom_size_dropdown_menu.dart';
import 'package:gap/gap.dart';

import 'widget/custom_size_text_field.dart';

class FieldSizeSamplePage extends StatelessWidget {
  const FieldSizeSamplePage({super.key});

  static const path = 'fieldsize';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('テキストフィールドのサイズ変更'),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(18),
              Text(
                'FontSize 18 textField',
                style: TextStyle(
                  fontFamily: 'NotoSansJP',
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
              Gap(2),
              CustomSizeTextField(
                fontSize: 18,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 8,
                ),
                height: 42,
              ),
              Gap(16),
              Text(
                'FontSize 18 dropdownButtonFormField',
                style: TextStyle(
                  fontFamily: 'NotoSansJP',
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
              Gap(2),
              CustomSizeDropdownButtonFormField(
                fontSize: 18,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 8,
                ),
                height: 42,
              ),
              Gap(16),
              Text(
                'FontSize 18 dropdownMenu',
                style: TextStyle(
                  fontFamily: 'NotoSansJP',
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
              Gap(2),
              CustomSizeDropdownMenu(
                fontSize: 18,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 8,
                ),
                height: 42,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
