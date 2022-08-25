import 'package:educacao_portal_app/feature/welcome/view/welcome_page.dart';
import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portal Educa',
      theme: colorsThemeData,
      home: WelcomePage(),
    );
  }
}
