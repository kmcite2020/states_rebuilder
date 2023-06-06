import 'package:flutter/material.dart';
import 'package:states_rebuilder_app/features/chapters/state_management/state_management.dart';

import 'development_boosters/boosters.dart';
import 'navigation/navigation.dart';

enum Chapters {
  stateManagement(
    'STATE MANAGEMENT',
    """
STATE INJECTION:
`RM.inject`: any type of state
`RM.injectFuture` : any async state
`RM.injectStream` : stream based state
STATE BUILDERS:
`ReactiveStatelessWidget` : extend this class to create reactive widgets
`OnReactive` : use within build method to make a view reactive
`OnBuilder` : explicitly scope rebuilds
STATE MUTATIONS:
`state and setState`
STATE LISTENERS:
`sideEffects`""",
    StateManagementPage(),
  ),
  navigation(
    'NAVIGATION',
    """
IMPERATIVE
DECLARATIVE
Navigator 1.0
Navigator 2.0""",
    NavigationPage(),
  ),
  developmentBoosters(
    'DEVELOPMENT BOOSTERS',
    """
BOOSTERS FOR CLEAN ARCHITECTURE:
1. CRUD (RM.injectCRUD)
2. Auth (RM.injectAuth)
3. Themeing 
4. l18n & i18n
5. animations
6. forms
7. scrolling
8. tabs & pages
9. testing""",
    DevelopmentBoosters(),
  ),
  ;

  const Chapters([this.name = '', this.description = '', this.child = const StateManagementPage()]);
  final Widget child;
  final String name;
  final String description;
}
