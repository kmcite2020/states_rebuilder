import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:states_rebuilder_app/extensions.dart';

import '../settings_bloc.dart';

class ThemeModeWidget extends ReactiveStatelessWidget {
  const ThemeModeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        'CHOOSE A THEME MODE'.text.pad,
        DropdownButtonFormField(
          value: settingsBloc.themeMode,
          items: const [
            DropdownMenuItem(
              value: ThemeMode.dark,
              child: Text(
                'DARK',
              ),
            ),
            DropdownMenuItem(
              value: ThemeMode.light,
              child: Text('LIGHT'),
            ),
          ],
          onChanged: settingsBloc.setThemeMode,
        ).pad,
      ],
    ).pad;
  }
}
