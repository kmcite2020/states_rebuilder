import 'package:flutter/material.dart';

import '../../../../main.dart';
import '../../../widgets/paragraph_view.dart';

class I18NPage extends StatelessWidget {
  const I18NPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          ParagraphView(text: '''## App internationalization and localization

To internationalize and localize your app:

  ```dart
  // U.S. English
  class EnUS {
    final helloWorld = 'Hello world';
  }
  // Spanish
  class EsEs implements EnUs{
    final helloWorld = 'Hola Mondo';
  }
  ```

  > You can use `json` or `arb` file for language translations.

  ```dart
  final i18n = RM.injectI18N<EnUS>(
          {
            Local('en', 'US'): ()=> EnUS(); // Can be async
            Local('es', 'ES'): ()=> EsES();
          };
          persistKey: '__lang__', // Local persistance of language 
  );
  ```

  In the UI:

  ```dart
  Text(i18n.of(context).helloWorld);
  ```

  ```dart
  // Choose the language
  i18n.locale = Local('es', 'Es');
  // Or: choose the system language
  i18n.locale = SystemLocale();
  ```

- [🔍 See more detailed information about InjectedI18N](https://github.com/GIfatahTH/states_rebuilder/wiki/injected_i18n_api).

- [**Here is an example on app internationalization**](https://github.com/GIfatahTH/states_rebuilder/blob/dev/examples/others/ex_005_theme_switching).

- [**Here is an example on app internationalization using ARB files**](https://github.com/GIfatahTH/states_rebuilder/blob/dev/examples/others/ex_005_1_internationalization_using_arb).
'''),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => router.back(),
        child: const Icon(Icons.arrow_back_ios_new),
      ),
    );
  }
}
