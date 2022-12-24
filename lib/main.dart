import 'package:flutter/material.dart';
import 'package:uyobooks/screens/splash/splash_screen.dart';
import 'package:uyobooks/routes.dart';
import 'package:uyobooks/theme.dart';

void main() async {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'uyobooks',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
