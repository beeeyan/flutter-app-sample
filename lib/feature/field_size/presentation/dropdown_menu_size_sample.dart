import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'widget/custom_size_dropdown_menu.dart';

class DorpdownMenuSamplePage extends StatelessWidget {
  const DorpdownMenuSamplePage({super.key});

  static const path = 'dorpdownmenusize';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DorpdownMenu'),
      ),
      body: const Padding(
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
              CustomSizeDropdownMenu(
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
              CustomSizeDropdownMenu(
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
              CustomSizeDropdownMenu(
                fontSize: 32,
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
              CustomSizeDropdownMenu(
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
