import 'package:flutter/material.dart';

import '../../../../main.dart';

class AsyncSMPage extends StatelessWidget {
  const AsyncSMPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => router.back(),
        child: const Icon(Icons.arrow_back_ios_new),
      ),
    );
  }
}

enum AsyncSM { future, stream }
