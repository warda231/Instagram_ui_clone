import 'package:flutter/material.dart';
import 'package:instagram_clone/responsive/mob_screen_layout.dart';
import 'package:instagram_clone/responsive/web_screen_layout.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/utils/global_variables.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget Web_Screen_Layout;
    final Widget Mob_Screen_Layout;

  const ResponsiveLayout({super.key,
  required this.Mob_Screen_Layout, 
  required this.Web_Screen_Layout,});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        if(constraints.maxWidth>WebScreenSize){
           return Web_Screen_Layout;
        }
        return Mob_Screen_Layout;
      },
    );
  }
}
