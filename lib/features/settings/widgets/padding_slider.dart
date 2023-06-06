import 'package:flutter/material.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';
import 'package:states_rebuilder_app/extensions.dart';

import '../settings_bloc.dart';

class PaddingSliderWidget extends ReactiveStatelessWidget {
  const PaddingSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        'PADDING'.text.pad,
        Slider(
          onChanged: settingsBloc.setPadding,
          value: settingsBloc.padding,
          min: 6.0,
          max: 15.0,
        ),
      ],
    );
  }
}
