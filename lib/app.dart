import 'package:binadim_store/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class BAMainApp extends StatelessWidget {
  const BAMainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: BATheme.lightTheme,
      darkTheme: BATheme.darkTheme,
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Center(child: Text('World!')),
      ),
    );
  }
}
