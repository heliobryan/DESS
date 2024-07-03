import 'package:dess/Source/Screens/Forms/form_page.dart';
import 'package:dess/Source/Screens/Home/home_page.dart';
import 'package:dess/Source/Screens/Register/initial_page.dart';
import 'package:dess/Source/Screens/Register/login_page.dart';
import 'package:dess/Source/Screens/Register/register_page.dart';
import 'package:dess/Source/Screens/Register/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const DesApp(),
  );
}

class DesApp extends StatelessWidget {
  const DesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'homePage',
      routes: {
        'initialPage': (context) => const InitialPage(),
        'splashPage': (context) => const SplashPage(),
        'registerPage': (context) => const RegisterPage(),
        'loginPage': (context) => const LoginPage(),
        'form1Page': (context) => const Form1Page(),
        'form2Page': (context) => const Form2Page(),
        'form3Page': (context) => const Form3Page(),
        'homePage': (context) => const HomePage(),
        'avaliationPage': (context) => const AvaliationPage(),
        'managePage': (context) => const ManagePage(),
        'passportPage': (context) => const PassportPage(),
      },
    );
  }
}
