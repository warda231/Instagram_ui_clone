import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/theme_provider.dart';

class Notify extends StatelessWidget {
  const Notify({super.key});

  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<themePro>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text("theme demo"),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
              title: Text("light mode.."),
              value: ThemeMode.light,
              groupValue: themeChanger.thememode,
              onChanged: themeChanger.setTheme),
          RadioListTile<ThemeMode>(
              title: Text("dark mode.."),
              value: ThemeMode.dark,
              groupValue: themeChanger.thememode,
              onChanged: themeChanger.setTheme),
        ],
      ),
    );
  }
}
