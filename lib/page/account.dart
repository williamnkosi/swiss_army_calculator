import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swiss_army_calculator/services/theme_service/app_themes.dart';

import '../app/bloc/app_bloc.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: appThemes.entries.map((entry) {
            return ElevatedButton(
              onPressed: () {
                BlocProvider.of<AppBloc>(context)
                    .add(AppSwitchTheme(themeName: entry.key));
              },
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(16.0),
                primary: entry.value.mainColor,
              ),
              child: const SizedBox(
                width: 50.0,
                height: 50.0,
              ),
            );
          }).toList()),
    );
  }
}
