// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';
import 'package:states_rebuilder_app/extensions.dart';

import '../settings_bloc.dart';

class RestoreDefaultSettingsWidget extends ReactiveStatelessWidget {
  const RestoreDefaultSettingsWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: settingsBloc.isInDefaultState ? null : () => settingsBloc.restoreDefaults(),
      child: 'RESTORE CONFIGURATIONS'.text,
    ).pad;
  }
}
