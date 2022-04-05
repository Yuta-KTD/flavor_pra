import 'package:flutter/material.dart';

class AppConfig extends InheritedWidget {
  const AppConfig({
    required this.appDisplayName,
    required this.appInternalId,
    required this.stringResource,
    required Widget child,
  }) : super(child: child);

  final String appDisplayName;
  final int appInternalId;
  final StringResource stringResource;

  static AppConfig? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}

abstract class StringResource {
  late String APP_DESCRIPTION;
}
