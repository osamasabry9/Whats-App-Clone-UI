import 'package:flutter/material.dart';
import 'package:whats_app_clone/config/colors.dart';
import 'package:whats_app_clone/utils/responsive_layout.dart';
import 'package:whats_app_clone/views/pages/mobile_screen.dart';
import 'package:whats_app_clone/views/pages/web_screen.dart';

void main() {
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whats App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
