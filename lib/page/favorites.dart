import 'package:flutter/material.dart';
import 'package:swiss_army_calculator/widgets/bottom_sheet/app_bottom_sheet.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      onPressed: () {
        appShowBottomSheet(
            context: context, title: 'testing', child: const Text('ok'));
      },
      child: const Text('press'),
    ));
  }
}
