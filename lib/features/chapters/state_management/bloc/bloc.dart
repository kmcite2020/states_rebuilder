import 'package:flutter/material.dart';

import '../../../../main.dart';

class BlocPage extends StatelessWidget {
  const BlocPage({super.key});

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
