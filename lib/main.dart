import 'package:flutter/material.dart';

import 'package:instagram_clone/utils/colors.dart';
import 'package:provider/provider.dart';

import 'Providers/fav_item.dart';
import 'Providers/theme_provider.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => favItem(),
        ),
        ChangeNotifierProvider(
            create: (_) => themePro(),
          )
      ],
      child:Builder(builder: (BuildContext context){
                  final themeChanger = Provider.of<themePro>(context, listen: false);

        return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Instagram Clone Demo',
        themeMode: Provider.of<themePro>(context).thememode,

       theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.blue,
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
            ),
        home: ResponsiveLayout(
          Mob_Screen_Layout: MobScreenlayout(),
          Web_Screen_Layout: WebScreenlayout(),
        ),
      );
      }),
      
      
    );
  }
}
