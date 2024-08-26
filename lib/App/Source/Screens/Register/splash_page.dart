import 'dart:async';
import 'package:dess/App/Source/Core/components.dart';
import 'package:dess/App/Source/Screens/Home/home_page.dart';
import 'package:dess/App/Source/Screens/Register/initial_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 2),
      () => tokenVerify().then((value) {
        if (value) {
          // ignore: use_build_context_synchronously
          Navigator.pushReplacement(
              // ignore: use_build_context_synchronously
              context,
              MaterialPageRoute(
                  builder: (context) => const HomePage(
                        selectedcategory: '',
                        initialCategory: '',
                      )));
        } else {
          // ignore: use_build_context_synchronously
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const InitialPage()));
        }
      }),
    );
  }

  Future<bool> tokenVerify() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getString('token') != null) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      body: Stack(
        children: [
          GradientBack(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/images/deslogo.png')),
                SizedBox(height: 40),
                Image(image: AssetImage('assets/images/desname.png')),
                SizedBox(height: 80),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
