import 'package:flavor_test/app_config.dart';
import 'package:flavor_test/main_common.dart';
import 'package:flutter/material.dart';
import 'package:flavor_test/resource/display_strings_app2.dart';

void main() {
  var configureApp = AppConfig(
    appDisplayName: 'App 2',
    appInternalId: 2,
    stringResource: StringResourceApp2(),
    child: const MyApp(),
  );

  mainCommon();

  runApp(configureApp);
}
