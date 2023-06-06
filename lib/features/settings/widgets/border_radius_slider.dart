import 'package:flutter/material.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';
import 'package:states_rebuilder_app/extensions.dart';

import '../settings_bloc.dart';

class BorderRadiusSliderWidget extends ReactiveStatelessWidget {
  const BorderRadiusSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        'BORDER RADIUS'.text.pad,
        Slider(
          onChanged: settingsBloc.setBorderRadius,
          value: settingsBloc.borderRadius,
          min: 0.0,
          max: 35.0,
        ),
      ],
    );
  }
}
