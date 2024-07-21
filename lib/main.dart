import 'package:flutter/material.dart';
import 'package:jack_tips_todo/core/routes/routes.dart';
import 'package:jack_tips_todo/core/theme/app_theme.dart';
import 'package:jack_tips_todo/core/utils/app_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: AppString.appName,
      theme: AppTheme.darkThemeMode,
      routerConfig: router,
    );
  }
}
