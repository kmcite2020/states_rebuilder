// to inject any type use injection or extension

/// final Injected<T> count = RM.inject<T>(() => T);

// Injected<T> inject<T>(
//   T Function() creator, {
//   T? initialState,
//   SnapState<T>? Function(SnapState<T>, SnapState<T>)? stateInterceptor,
//   SideEffects<T>? sideEffects,
//   DependsOn<T>? dependsOn,
//   int undoStackLength = 0,
//   PersistState<T> Function()? persist,
//   bool autoDisposeWhenNotUsed = true,
//   String? debugPrintWhenNotifiedPreMessage,
//   Object? Function(T?)? toDebugString,
// });
