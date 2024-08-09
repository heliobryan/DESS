import 'dart:convert';
import 'dart:developer';
import 'package:dess/App/Source/Core/components.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class CardPlayer extends StatefulWidget {
  const CardPlayer({super.key});

  @override
  State<CardPlayer> createState() => _CardPlayerState();
}

class _CardPlayerState extends State<CardPlayer> {
  Map<String, dynamic> userData = {};
  @override
  void initState() {
    super.initState();
    userInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      width: 341,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        border: GradientBoxBorder(
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xFF981DB9),
              Color(0xFF0F76CE),
            ],
          ),
        ),
      ),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          foregroundColor: const Color(0xFF981DB9),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          side: const BorderSide(color: Colors.transparent),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 20),
              const Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
                size: 40,
              ),
              const SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    '${(userData['id'] ?? '')}',
                    style: comp15Out(),
                  ),
                  Text(
                    '${(userData['position'] ?? '')}',
                    style: comp15Out(),
                  ),
                ],
              ),
            ],
          ),
        ),
        onPressed: () => Navigator.pushNamed(context, 'avaliationPage'),
      ),
    );
  }

  Future<void> userInfo() async {
    try {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      var url = Uri.parse(
          'https://fd99-45-70-34-167.ngrok-free.app/api/participants');
      final token = sharedPreferences.getString('token');
      log('token $token');
      var restAwnser = await http.get(
        url,
        headers: {
          'Authorization': 'Bearer $token',
        },
      );
      // final decode = jsonDecode(restAwnser.body);
      log('response ${restAwnser.body}');
      if (restAwnser.statusCode == 200) {
        final decode = jsonDecode(restAwnser.body);
        setState(() {
          userData = decode[''];
        });

        log('DADOS DO USUARIO FINAL $userData');
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
