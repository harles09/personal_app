import 'package:flutter/material.dart';
import 'package:personal_app/ui/pages/easy_login_page.dart';
import 'package:personal_app/ui/pages/home_page.dart';
import 'package:personal_app/ui/pages/inbank_page.dart';
import 'package:personal_app/ui/pages/send_page.dart';
import 'package:personal_app/ui/pages/source_account_page.dart';
import 'package:personal_app/ui/pages/splash_page.dart';
import 'package:personal_app/ui/pages/transfer_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: getRoute,
      routes: {
        '/': (context) => const SplashPage(),
        '/home': (context) => const HomePage(),
        '/send': (context) => const SendPage(),
        '/inbank': (context) => const InbankPage(),
        '/easypin': (context) => const EasyLoginPage(),
        '/transfer': (context) => const TransferPage(),
        '/sourceAccount': (context) => const SourceAccountPage(),
      },
    );
  }
}

Route<dynamic>? getRoute(RouteSettings settings) {
  if (settings.name == '/transfer') {
    final args = settings.arguments as SourceAccount;
    debugPrint(args.noRek);
    debugPrint(args.fullName);
    debugPrint(args.category);
    debugPrint(args.money.toString());
    return MaterialPageRoute(
      builder: (context) {
        return TransferPage(
          noRek: args.noRek,
          fullName: args.fullName,
          category: args.category,
          money: args.money,
        );
      },
    );
  }
  return null;
}

class SourceAccount {
  final String noRek, fullName, category;
  final double money;

  SourceAccount(this.noRek, this.fullName, this.category, this.money);
}
