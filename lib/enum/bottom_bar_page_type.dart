import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../feature/field_size/presentation/field_size_sample.dart';
import '../feature/pokemon/presentation/pokemon_view.dart';
import '../my_home.dart';

final bottomBarPageTypeProvider =
    StateProvider<BottomBarPageType>((ref) => BottomBarPageType.home);

enum BottomBarPageType {
  home(
    'ホーム',
    Icon(Icons.home),
    // ForcedUpgradePage(),
    MyHomePage(),
  ),
  secondPage(
    'ポケモン',
    Icon(Icons.bookmark_outlined),
    PokemonViewPage(),
  ),
  thirdPage(
    'フィールドのサイズ変更',
    Icon(Icons.bookmark_outlined),
    FieldSizeSamplePage(),
  )
  ;

  const BottomBarPageType(
    this.title,
    this.buttonIcon,
    this.widget,
  );

  final String title;
  final Icon buttonIcon;
  final Widget widget;
}
