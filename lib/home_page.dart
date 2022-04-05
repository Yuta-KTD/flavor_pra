import 'package:flutter/material.dart';
import 'package:flavor_test/display_strings.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flavors Example"),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 16.0,
      ),
      child: Column(
        children: <Widget>[
          Text(APP_TITLE),
          Text(DATE + getDateForDisplay()),
          Text(APP_DESCRIPTION),
          Image.asset(
            'assets/dancing.png',
            width: 50.0,
            height: 50.0,
          ),
          Image.asset('assets/1.png', width: 50.0, height: 50.0),
        ],
      ),
    );
  }

  String getDateForDisplay() {
    DateTime now = DateTime.now();
    var formatter = DateFormat('EEEE dd MMMM yyyy');
    return formatter.format(now);
  }
}
