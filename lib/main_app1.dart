import 'package:flavor_test/app_config.dart';
import 'package:flavor_test/main_common.dart';
import 'package:flutter/material.dart';
import 'package:flavor_test/resource/display_strings_app1.dart';

void main() {
  var configureApp = AppConfig(
    appDisplayName: 'App 1',
    appInternalId: 1,
    stringResource: StringResourceApp1(),
    child: const MyApp(),
  );

  mainCommon();

  runApp(configureApp);
}
