import 'package:flutter/material.dart';

import '../../../../main.dart';
import '../../../widgets/paragraph_view.dart';

class ScrollingPage extends StatelessWidget {
  const ScrollingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: const [
        ParagraphView(text: '''## Working with scrollable view

- To work with scrolling list:

  ```dart
  final scroll = RM.injectScrolling(
    initialScrollOffset: 0.0,
    keepScrollOffset: true,
    endScrollDelay: 300,
    onScrolling: (scroll){
      if (scroll.hasReachedMinExtent) {
        print('Scrolling vertical list is in its top position');
      }
      if (scroll.hasReachedMaxExtent) {
        print('Scrolling vertical list is in its bottom position');
      }

      if (scroll.hasStartedScrolling) {
        // Called only one time.
        print('User has just start scrolling');
      }
    }
  );
  ```

  In the UI:

  ```dart
  ListView(
      controller: scroll.controller, // Ready to go 🏃‍♀️ 🏃
      children: <Widget>[],
  );
  ```

- [🔍 See more detailed information about `InjectedScrolling`](https://github.com/GIfatahTH/states_rebuilder/wiki/injected_scrolling_api).
''')
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => router.back(),
        child: const Icon(Icons.arrow_back_ios_new),
      ),
    );
  }
}
