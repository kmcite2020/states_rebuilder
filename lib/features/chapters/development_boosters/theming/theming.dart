import 'package:flutter/material.dart';

import '../../../../main.dart';
import '../../../widgets/paragraph_view.dart';

class ThemingPage extends StatelessWidget {
  const ThemingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          ParagraphView(text: '''## Dynamic theme switching

To dynamically switch themes,

  ```dart
  final theme = RM.injectTheme<String>(
      lightThemes : {
        'simple': ThemeData.light( ... ),
        'solarized': ThemeData.light( ...),
      },
      darkThemes: {
        'simple': ThemeData.dark( ... ),
        'solarized': ThemeData.dark( ...),
      };
      themeMode: ThemeMode.system;
      persistKey: '__theme__',
  );
  ```

  ```dart
  // Choose the theme
  theme.state = 'solarized'
  // Toggle between dark and light mode of the chosen them
  theme.toggle();
  ```

- [🔍 See more detailed information about `InjectedTheme`](https://github.com/GIfatahTH/states_rebuilder/wiki/injected_theme_api).

- [**Here is an example on dynamic theming**](https://github.com/GIfatahTH/states_rebuilder/blob/dev/examples/others/ex_005_theme_switching).
''')
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => router.back(),
        child: const Icon(Icons.arrow_back_ios_new),
      ),
    );
  }
}
