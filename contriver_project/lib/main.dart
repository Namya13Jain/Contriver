import 'package:contriver_project/screens/birthdays.dart';
import 'package:contriver_project/screens/corporate_events.dart';
import 'package:contriver_project/screens/events.dart';
import 'package:contriver_project/screens/florists.dart';
import 'package:contriver_project/screens/get_togethers.dart';
import 'package:contriver_project/screens/home_screen.dart';
import 'package:contriver_project/screens/packages.dart';
import 'package:contriver_project/screens/splash_screen.dart';
import 'package:contriver_project/screens/vendors.dart';
import 'package:contriver_project/screens/weddings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash',
      routes: {
        'splash': (context) => const SplashScreen(),
        'home': (context) => const HomeScreen(),
        'events_page': (context) => const EventsPage(),
        'packages_page': (context) => const PackagesPage(),
        'birthday': (context) => const Birthdays(),
        'wedding': (context) => const Weddings(),
        'vendors_page': (context) => const Vendors(),
        'get_together': (context) => const GetTogether(),
        'corporate': (context) => const CorporateEvents(),
        'florist': (context) => const Florists(),
      },
    );
  }
}
