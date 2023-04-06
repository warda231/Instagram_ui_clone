import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/colors.dart';

import 'responsive/mob_screen_layout.dart';
import 'responsive/responsive_layout.dart';
import 'responsive/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: primaryColor,
      ),
      home: ResponsiveLayout(
        Mob_Screen_Layout: MobScreenlayout(),
        Web_Screen_Layout: WebScreenlayout(),
      ),
    );
  }
}
