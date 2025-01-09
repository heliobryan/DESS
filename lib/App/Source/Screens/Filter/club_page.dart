import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:dess/App/Source/Core/Components/GlobalComponents/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Form2Page extends StatefulWidget {
  const Form2Page({super.key});

  @override
  State<Form2Page> createState() => _Form2PageState();
}

class _Form2PageState extends State<Form2Page> {
  List clubList = [];

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
                const SizedBox(height: 70),
                Text(
                  'QUAL ESCOLA',
                  style: comp20Str(),
                ),
                Text(
                  'VOCÊ DA TREINO?',
                  style: comp20Str(),
                ),
                const SizedBox(height: 180),
                // IconButton(
                //   style: IconButton.styleFrom(
                //     foregroundColor: const Color(0xFF981DB9),
                //     shape: const RoundedRectangleBorder(
                //       borderRadius: BorderRadius.all(
                //         Radius.circular(12),
                //       ),
                //     ),
                //   ),
                //   icon: const Image(
                //       image: AssetImage('assets/images/vetorfla.png')),
                //   onPressed: () {},
                // ),
                // Text(
                //   'Escola',
                //   style: comp15Str(),
                // ),
                // Text(
                //   'Flamengo',
                //   style: comp15Str(),
                // ),
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
          clubList = decode;
        });

        // log('DADOS DO USUARIO FINAL $userData');
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
