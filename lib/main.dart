import 'package:flutter/material.dart';
import 'package:personal_app/ui/pages/home_page.dart';
import 'package:personal_app/ui/pages/inbank_page.dart';
import 'package:personal_app/ui/pages/send_page.dart';
import 'package:personal_app/ui/pages/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/home': (context) => const HomePage(),
        '/send': (context) => const SendPage(),
        '/inbank': (context) => const InbankPage(),
      },
    );
  }
}
