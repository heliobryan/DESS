import 'dart:async';
import 'package:dess/App/Source/Core/Components/GlobalComponents/components.dart';
import 'package:dess/App/Source/Screens/Home/Home/home_page.dart';
import 'package:dess/App/Source/Screens/Register/initial_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  double _logoOpacity = 0.0;
  double _textOpacity = 0.0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _logoOpacity = 1.0;
      });
    });

    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        _textOpacity = 1.0;
      });
    });

    Timer(
      const Duration(seconds: 2),
      () {
        setState(() {
          _isLoading = true; 
        });

        tokenVerify().then((value) {
          if (value) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(
                  selectedcategory: '',
                  initialCategory: '',
                ),
              ),
            );
          } else {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const InitialPage()),
            );
          }
        });
      },
    );
  }

  Future<bool> tokenVerify() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('token') != null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Stack(
        children: [
          const GradientBack(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedOpacity(
                  opacity: _logoOpacity,
                  duration: const Duration(seconds: 1),
                  child: SvgPicture.asset('assets/images/loggg.svg'),
                ),
                const SizedBox(height: 40),
                AnimatedOpacity(
                  opacity: _textOpacity,
                  duration: const Duration(seconds: 1),
                  child: SvgPicture.asset('assets/images/lodo.svg'),
                ),
                const SizedBox(height: 80),
                if (_isLoading)
                  const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
