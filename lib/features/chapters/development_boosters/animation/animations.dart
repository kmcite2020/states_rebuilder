import 'package:flutter/material.dart';

import '../../../../main.dart';
import '../../../widgets/paragraph_view.dart';

class AnimationsPage extends StatelessWidget {
  const AnimationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: const [
        ParagraphView(text: '''## Animation in StatelessWidget

### Implicit and explicit animation

  ```dart
  final animation = RM.injectAnimation(
    duration: const Duration(seconds: 1),
    curve: Curves.linear,
  );
  ```

  In the UI:
  For Implicit animation

  ```dart
  Center(
    child: OnAnimationBuilder(
        listenTo: animation,
        builder: (animate) => Container(
            // Animate is a callable class
            width: animate.call(selected ? 200.0 : 100.0),
            height: animate(selected ? 100.0 : 200.0, 'height'),
            color: animate(selected ? Colors.red : Colors.blue),
            alignment: animate(selected ? Alignment.center : AlignmentDirectional.topCenter),
            child: const FlutterLogo(size: 75),
        ),
    ),
  ),
  ```

  For explicit animation

  ```dart
  OnAnimationBuilder(
    listenTo: animation,
    builder: (animate) => Transform.rotate(
    angle: animate.formTween(
        (currentValue) => Tween(begin: 0, end: 2 * 3.14),
    )!,
    child: const FlutterLogo(size: 75),
    ),
  ),
  ```

- [🔍 See more detailed information about `InjectedAnimation`](https://github.com/GIfatahTH/states_rebuilder/wiki/injected_animation_api).

- [**Here are many show cases of implicit and explicit animation**](https://github.com/GIfatahTH/states_rebuilder/blob/dev/examples/others/ex_006_3_animation).
''')
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => router.back(),
        child: const Icon(Icons.arrow_back_ios_new),
      ),
    );
  }
}
