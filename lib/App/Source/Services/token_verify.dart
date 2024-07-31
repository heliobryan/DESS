import 'package:dess/App/Source/Screens/Register/initial_page.dart';
import 'package:dess/App/Source/Screens/Register/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TokenVerify extends StatefulWidget {
  const TokenVerify({super.key});

  @override
  State<TokenVerify> createState() => _TokenVerifyState();
}

class _TokenVerifyState extends State<TokenVerify> {
  @override
  void initState() {
    super.initState();
    tokenVerify().then((value) {
      if (value) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const SplashPage()));
      } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const InitialPage()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
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
}
