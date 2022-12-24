import 'package:flutter/material.dart';
import 'package:uyobooks/screens/splash/components/body.dart';
import 'package:uyobooks/size_config.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/splashScreen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(body: Body());
  }
}
