import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:dess/App/Source/Core/Components/GlobalComponents/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Form1Page extends StatefulWidget {
  const Form1Page({super.key});

  @override
  State<Form1Page> createState() => _Form1PageState();
}

class _Form1PageState extends State<Form1Page> {
  List sportsList = [];
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Stack(
        children: [
          const GradientBack(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Text(
                  'QUAL ESPORTE',
                  style: comp20Str(),
                ),
                Text(
                  'VOCÊ DA TREINO?',
                  style: comp20Str(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> getSports() async {
    try {
      String expenseListApi = dotenv.get('API_HOST', fallback: '');

      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      var url = Uri.parse(
          '${expenseListApi}api/modality?page=1&perPage=30&groupBySub=1&getAll=1');
      final token = sharedPreferences.getString('token');
      log('token $token');
      var restAwnser = await http.get(
        url,
        headers: {
          'Authorization': 'Bearer $token',
        },
      );
      // final decode = jsonDecode(restAwnser.body);
      if (restAwnser.statusCode == 200) {
        log('response ${restAwnser.body}');
        final decode = jsonDecode(restAwnser.body);
        setState(() {
          sportsList = decode;
        });

        // log('DADOS DO USUARIO FINAL $userData');
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
