import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';
import 'package:states_rebuilder_app/extensions.dart';

import '../settings_bloc.dart';

class MaterialColorWidget extends ReactiveStatelessWidget {
  const MaterialColorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        'COLORS'.text.pad,
        GridView.count(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          crossAxisCount: 4,
          children: List.generate(
            Colors.primaries.length,
            (index) {
              return Padding(
                padding: EdgeInsets.all(settingsBloc.padding / 2 + 2),
                child: ElevatedButton(
                  onPressed: settingsBloc.materialColorIndex == index
                      ? null
                      : () {
                          settingsBloc.setMaterialColorIndex;
                        },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.primaries[index],
                  ),
                  child: const Text(
                    '',
                  ),
                ).animate(target: settingsBloc.materialColorIndex == index ? 0.7 : 1).fade(
                      duration: 1.seconds,
                      curve: Curves.easeIn,
                    ),
              );
            },
          ),
        )
      ],
    );
  }
}
