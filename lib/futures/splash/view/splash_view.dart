import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jack_tips_todo/core/routes/route_names.dart';
import 'package:jack_tips_todo/core/theme/app_color.dart';
import 'package:jack_tips_todo/core/utils/app_images_url.dart';
import 'package:jack_tips_todo/core/widgets/logo.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.goNamed(RouteNames.login);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Logo.logo_text,
      ),
    );
  }
}
