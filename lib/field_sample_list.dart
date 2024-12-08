import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import 'feature/field_size/presentation/dropdown_button_size_sample.dart';
import 'feature/field_size/presentation/dropdown_menu_size_sample.dart';
import 'feature/field_size/presentation/field_size_sample.dart';
import 'feature/field_size/presentation/text_field_size_sample.dart';

class FieldSampleList extends StatelessWidget {
  const FieldSampleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(20),
            FilledButton(
              onPressed: () => context.go('/${TextFieldSizeSamplePage.path}'),
              child: const Text('テキストフィールド'),
            ),
            const Gap(20),
            FilledButton(
              onPressed: () => context.go('/${DorpdownButtonSamplePage.path}'),
              child: const Text('DorpdownButtonFormField'),
            ),
            const Gap(20),
            FilledButton(
              onPressed: () => context.go('/${DorpdownMenuSamplePage.path}'),
              child: const Text('DorpdownMenu'),
            ),
            const Gap(20),
            FilledButton(
              onPressed: () => context.go('/${FieldSizeSamplePage.path}'),
              child: const Text('高さを揃えた'),
            ),
          ],
      ),
    );
  }
}
