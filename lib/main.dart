import 'package:azkar_app_elancer/screens/home_screen.dart';
import 'package:azkar_app_elancer/screens/luanch_screen.dart';
import 'package:azkar_app_elancer/screens/my_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar'),
        Locale('en')
      ],
      locale:const Locale('ar'),
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context) => const LaunchScreen(),
        '/home_screen': (context) => const HomeScreen(),
        '/my_info_screen': (context) => MyInfo(),
      },
    );
  }
}
