import 'package:flavor_test/app_config.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

void mainCommon() {
  // Here would be background init code, if any
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    return _buildApp(config!.appDisplayName);
  }

  Widget _buildApp(String appName) {
    return MaterialApp(
      title: appName,
      home: const HomePage(),
    );
  }
}
