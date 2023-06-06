import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:states_rebuilder_app/extensions.dart';

import '../settings/settings_bloc.dart';

class TopicView extends ReactiveStatelessWidget {
  const TopicView({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: settingsBloc.materialColor.withOpacity(.3),
            spreadRadius: 1,
            blurRadius: 1,
          ),
          BoxShadow(
            color: settingsBloc.materialColor.withOpacity(.5),
            spreadRadius: 1,
            blurRadius: 1,
          ),
          BoxShadow(
            color: Colors.amber.withOpacity(.15),
            spreadRadius: 1,
            blurRadius: 1,
          ),
        ],
        borderRadius: BorderRadius.circular(settingsBloc.borderRadius),
      ),
      child: Center(child: text.textToTopic.pad),
    ).pad;
  }
}
