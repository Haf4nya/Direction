import 'package:direction_app/screens/MenuScreen.dart';
import 'package:direction_app/screens/ProfileScreen.dart';
import 'package:flutter/material.dart';

import 'Screens/ListMenuScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MenuScreen());
  }
}
