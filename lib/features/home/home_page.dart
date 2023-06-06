import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:states_rebuilder_app/extensions.dart';
import 'package:states_rebuilder_app/features/settings/fonts/ui/fonts_manager.dart';

import '../../main.dart';
import '../chapters/chapters.dart';
import '../settings/settings_page.dart';
import '../widgets/code_view.dart';
import '../widgets/paragraph_view.dart';
import '../widgets/subtopic.dart';
import '../widgets/topic_view.dart';
import 'home_data.dart';

class HomePage extends ReactiveStatelessWidget {
  const HomePage({super.key});

  @override
  void didMountWidget(BuildContext context) async {
    await Future.delayed(1.seconds);
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const FontsManager(),
      body: ListView(
        children: [
          const TopicView(text: 'states_rebuilder'),
          Image.asset('assets/logo.png'),
          const SubtopicView(text: 'Introduction'),
          const ParagraphView(text: statesRebuilderIntro),
          const SubtopicView(text: 'Install'),
          const ParagraphView(text: 'to install states_rebuilder'),
          const CodeView(text: 'flutter pub add states_rebuilder'),
          const TopicView(text: 'Documentations'),
          ...List.generate(
            Chapters.values.length,
            (index) {
              final Chapters chapter = Chapters.values[index];
              return OutlinedButton(
                onPressed: () => router.toPageless(chapter.child),
                child: chapter.name.text,
              ).pad;
            },
          ),
        ],
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton(
            tooltip: 'Fonts Settings',
            heroTag: randomId,
            onPressed: () {
              router.scaffold.openDrawer();
            },
            child: const Icon(Icons.font_download),
          ),
          FloatingActionButton(
            onPressed: () => router.toPageless(const SettingsPage()),
            child: const Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
