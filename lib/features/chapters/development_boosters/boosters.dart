import 'package:flutter/material.dart';
import 'package:states_rebuilder_app/extensions.dart';
import 'package:states_rebuilder_app/features/chapters/development_boosters/pages_and_tabs/pages_and_tabs.dart';
import 'package:states_rebuilder_app/features/chapters/development_boosters/scrolling/scroll.dart';
import 'package:states_rebuilder_app/features/chapters/development_boosters/testing/testing.dart';
import 'package:states_rebuilder_app/features/chapters/development_boosters/theming/theming.dart';

import '../../../main.dart';
import 'animation/animations.dart';
import 'auth/auth.dart';
import 'crud/crud.dart';
import 'forms/formz.dart';
import 'i18n/i18n.dart';

enum Booster {
  crud(
    "CRUD",
    'create, read, update and delete with repository support',
    CRUDPage(),
  ),
  auth(
    "AUTH",
    'authentication support',
    AuthPage(),
  ),
  theming(
    "THEMES",
    '',
    ThemingPage(),
  ),
  i18n(
    "INTERNATIONALIZATIONS",
    '',
    I18NPage(),
  ),

  animation(
    "ANIMATIONS",
    '',
    AnimationsPage(),
  ),
  formz(
    "FORM VALIDATIONS",
    '',
    FormzPage(),
  ),
  scrolls(
    "SCROLLS",
    '',
    ScrollingPage(),
  ),
  tabPages(
    "TABS & PAGES",
    '',
    PageTabsPage(),
  ),
  testing(
    "TESTING",
    '',
    TestingPage(),
  );

  const Booster(this.name, [this.description = '', this.child = const DevelopmentBoosters()]);
  final Widget child;
  final String name;
  final String description;
}

class DevelopmentBoosters extends StatelessWidget {
  const DevelopmentBoosters({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: List.of(
          Booster.values.map(
            (e) => ElevatedButton(
                    onPressed: () {
                      router.toPageless(e.child);
                    },
                    child: e.name.text)
                .pad,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => router.back(),
        child: const Icon(Icons.arrow_back_ios_new),
      ),
    );
  }
}
