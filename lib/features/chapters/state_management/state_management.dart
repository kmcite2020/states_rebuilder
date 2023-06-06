import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:states_rebuilder_app/extensions.dart';
import 'package:states_rebuilder_app/features/chapters/state_management/sync/sync.dart';

import '../../../main.dart';
import '../../widgets/code_view.dart';
import '../../widgets/paragraph_view.dart';
import '../../widgets/topic_view.dart';
import 'async/async.dart';
import 'bloc/bloc.dart';
import 'mvc/mvc.dart';

final scroller = RM.injectScrolling();

class StateManagementPage extends StatelessWidget {
  const StateManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnScrollBuilder(
          listenTo: scroller,
          builder: (scroller) {
            return ListView(
              shrinkWrap: true,
              children: [
                const TopicView(
                  text: '''
STATE MANAGEMENT''',
                ),
                const ParagraphView(
                  text: '''
/// 1. create reactive states/models
/// 2. for states to be reactive you have to wrap it using [OnReactive] or be present in [ReactiveStatelessWidget]
/// 3. consume state using state getter
/// 4. mutate the state using state getter''',
                ),
                const CodeView(
                  text: '''
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

// 1
final count = 0.inj();
final countRM = RM.inject(() => 0);

class CounterWidget extends StatelessWidget {
  const CounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 2
      body: OnReactive(
        () {
          return Column(
            children: [
              // 3.
              Text(count.state.toString()),
              Text(countRM.state.toString()),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 4
          count.state++;
          countRM.state++;
        },
      ),
    );
  }
}''',
                ),
                ...StateManagement.values.map(
                  (e) => OutlinedButton(
                    child: e.name.text,
                    onPressed: () => router.toPageless(e.child),
                  ).pad,
                ),
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => router.back(),
        child: const Icon(Icons.arrow_back_ios_new),
      ),
    );
  }
}

enum StateManagement {
  syncSM(
    'Sync',
    '',
    SyncSMPage(),
  ),
  asyncSM(
    'Async',
    '',
    AsyncSMPage(),
  ),
  bloc(
    'Bloc',
    '',
    BlocPage(),
  ),
  mvc('MVC', '', MVCPage()),
  ;

  const StateManagement([
    this.name = '',
    this.description = '',
    this.child = const SyncSMPage(),
  ]);
  final String name;
  final String description;
  final Widget child;
}
