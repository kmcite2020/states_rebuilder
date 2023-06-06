// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';

import '../../../../main.dart';
import '../../../widgets/paragraph_view.dart';
import '../../../widgets/subtopic.dart';
import '../../../widgets/topic_view.dart';

class SyncSMPage extends StatelessWidget {
  const SyncSMPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const TopicView(
            text: '''
SYNCHRONOUS STATE MANAGEMENT''',
          ),
          const ParagraphView(
            text: '''
final Injected<T> count = RM.inject<T>(() => T);''',
          ),
          const ParagraphView(
            text: '''
T Function() creator, required positional parameter
T? initialState,
SnapState<T>? Function(SnapState<T>, SnapState<T>)? stateInterceptor,
SideEffects<T>? sideEffects,
DependsOn<T>? dependsOn,
int undoStackLength = 0,
PersistState<T> Function()? persist,
bool autoDisposeWhenNotUsed = true,
String? debugPrintWhenNotifiedPreMessage,
Object? Function(T?)? toDebugString,''',
          ),
          const SubtopicView(
            text: 'RM & Injected',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => router.back(),
        child: const Icon(Icons.arrow_back_ios_new),
      ),
    );
  }
}

enum Sync {
  bool,
  int,
  double,
  list,
  map,
  set,
  types,
}

final x = RM.inject(() {});
