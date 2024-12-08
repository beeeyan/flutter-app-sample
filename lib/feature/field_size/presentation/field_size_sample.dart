import 'package:flutter/material.dart';
import 'package:flutter_app_sample/feature/field_size/presentation/widget/custom_size_text_field.dart';
import 'package:gap/gap.dart';

class FieldSizeSamplePage extends StatelessWidget {
  const FieldSizeSamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(18),
              Text(
                'FontSize 8',
                style: TextStyle(
                  fontFamily: 'NotoSansJP',
                  fontWeight: FontWeight.w400,
                  fontSize: 8,
                ),
              ),
              Gap(2),
              CustomSizeTextField(
                fontSize: 8,
                contentPadding: EdgeInsets.symmetric(horizontal: 8),
              ),
              Gap(16),
              Text(
                'FontSize 16',
                style: TextStyle(
                  fontFamily: 'NotoSansJP',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              Gap(2),
              CustomSizeTextField(
                contentPadding: EdgeInsets.symmetric(horizontal: 8),
              ),
              Gap(16),
              Text(
                'FontSize 32',
                style: TextStyle(
                  fontFamily: 'NotoSansJP',
                  fontWeight: FontWeight.w400,
                  fontSize: 32,
                ),
              ),
              Gap(2),
              CustomSizeTextField(
                fontSize: 32,
                contentPadding: EdgeInsets.symmetric(horizontal: 8),
              ),
              Gap(16),
              Text(
                'FontSize 50',
                style: TextStyle(
                  fontFamily: 'NotoSansJP',
                  fontWeight: FontWeight.w400,
                  fontSize: 50,
                ),
              ),
              Gap(2),
              CustomSizeTextField(
                fontSize: 50,
                contentPadding: EdgeInsets.symmetric(horizontal: 8),
              ),
              Gap(16),
              Text(
                'FontSize 64',
                style: TextStyle(
                  fontFamily: 'NotoSansJP',
                  fontWeight: FontWeight.w400,
                  fontSize: 64,
                ),
              ),
              Gap(2),
              CustomSizeTextField(
                fontSize: 64,
                contentPadding: EdgeInsets.symmetric(horizontal: 8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
