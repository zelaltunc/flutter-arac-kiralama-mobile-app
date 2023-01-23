import 'package:bitirmeprojesi/car.dart';
import 'package:bitirmeprojesi/credit_card.dart';
import 'package:bitirmeprojesi/customer_login.dart';
import 'package:bitirmeprojesi/customer_register.dart';
import 'package:bitirmeprojesi/driver_login.dart';
import 'package:bitirmeprojesi/driver_register.dart';
import 'package:bitirmeprojesi/driver_register2.dart';
import 'package:bitirmeprojesi/gecmis_yolculuk.dart';
import 'package:bitirmeprojesi/home_page.dart';
import 'package:bitirmeprojesi/iletisim.dart';
import 'package:bitirmeprojesi/motor.dart';
import 'package:bitirmeprojesi/nakliye_page.dart';
import 'package:bitirmeprojesi/paket_tasima.dart';
import 'package:bitirmeprojesi/paket_tasima2.dart';
import 'package:bitirmeprojesi/secondpage.dart';
import 'package:bitirmeprojesi/sifremi_unuttum.dart';
import 'package:bitirmeprojesi/splash_screen.dart';
import 'package:bitirmeprojesi/ulasim.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ayır Onu",
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: const SplashScreen(),
    );
  }
}
