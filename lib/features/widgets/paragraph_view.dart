import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:states_rebuilder_app/extensions.dart';

import '../settings/settings_bloc.dart';

class ParagraphView extends ReactiveStatelessWidget {
  const ParagraphView({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(settingsBloc.borderRadius),
        border: Border.all(),
      ),
      child: text.textToParagraph.pad,
    ).pad;
  }
}
