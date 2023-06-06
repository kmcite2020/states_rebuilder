import 'package:flutter/material.dart';

import '../../../../main.dart';
import '../../../widgets/paragraph_view.dart';

class TestingPage extends StatelessWidget {
  const TestingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          ParagraphView(
            text: '''All Injected state can be mocked for test.
To mock it in test:

  ```dart
    model.injectMock(()=> MyMockModel());
    model.injectFutureMock(()=> MyMockModel());
    products.injectCRUDMock(()=> MockRepository())
    user.injectAuthMock(()=> MockAuthRepository())
  ```

And many more features.''',
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => router.back(),
        child: const Icon(Icons.arrow_back_ios_new),
      ),
    );
  }
}
