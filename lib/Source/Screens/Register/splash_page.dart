import 'dart:async';
import 'dart:ui';
import 'package:dess/Source/Screens/Register/initial_page.dart';
import 'package:flutter/material.dart';

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
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const InitialPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 282,
                height: 146,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0F76CE),
                      Color(0xFF0F76CE),
                      Color(0xFF981DB9),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                  child: Container(
                    color: Colors.black.withOpacity(0),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 282,
                    height: 146,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF0F76CE),
                          Color(0xFF981DB9),
                          Color(0xFF981DB9),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 150, sigmaY: 120),
                      child: Container(
                        color: Colors.black.withOpacity(0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Center(
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
