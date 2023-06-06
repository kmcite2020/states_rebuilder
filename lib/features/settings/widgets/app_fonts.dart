import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:states_rebuilder_app/extensions.dart';

import '../fonts/fonts_bloc.dart';
import '../fonts/ui/generic_font_with_size_changer.dart';

class AppFontsChanger extends ReactiveStatelessWidget {
  const AppFontsChanger({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericFontWithSizeChanger(
      fontName: fontsBloc.appFont,
      fontSize: fontsBloc.appFontSize,
      settingsName: 'Application Font',
      onFontChanged: fontsBloc.setAppFont,
      onFontSizeChanged: fontsBloc.setAppFontSize,
    ).pad;
  }
}
