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
                'フォントサイズ 16',
                style: TextStyle(fontSize: 16),
              ),
              Gap(2),
              CustomSizeTextField(),
            ],
          ),
        ),
      ),
    );
  }
}
