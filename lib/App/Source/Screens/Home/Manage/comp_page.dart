import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:dess/App/Source/Core/CardComponents/cards.dart';
import 'package:dess/App/Source/Core/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CompPage extends StatefulWidget {
  const CompPage({super.key});

  @override
  State<CompPage> createState() => _CompPageState();
}

class _CompPageState extends State<CompPage> {
  Map<String, dynamic> eventData = {};
  List eventList = [];

  @override
  void initState() {
    super.initState();
    eventInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () => Navigator.pop(context, 'managePage'),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.exit_to_app_outlined,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => const ExitButton(),
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          'Competições',
          style: comp20Str(),
        ),
      ),
      backgroundColor: const Color(0xFF1E1E1E),
      body: Stack(
        children: [
          const GradientBack(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Jogadas',
                    style: comp20Out(),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    final event = eventList[index];

                    log('cada evento: $event');

                    return CompCard(
                      event: event,
                    );
                  },
                  itemCount: eventList.length,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> eventInfo() async {
    try {
      String expenseListApi = dotenv.get('API_HOST', fallback: '');

      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      var url = Uri.parse('${expenseListApi}api/events');
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
          eventList = decode;
        });

        // log('DADOS DO USUARIO FINAL $userData');
      }
    } catch (e) {
      log(e.toString());
    }
  }
}

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  Map<String, dynamic> localData = {};

  @override
  void initState() {
    super.initState();
    localInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context, const CompPage()),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 20,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: const Color(0xFF1E1E1E),
      body: Stack(
        children: [
          const GradientBack(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 296,
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(38),
                    ),
                    border: GradientBoxBorder(
                      gradient: gradientLk(),
                    ),
                  ),
                  child: Center(
                    child: GradientText(
                      'Programação',
                      style: const TextStyle(
                        fontFamily: 'STRETCH',
                        fontSize: 25,
                      ),
                      colors: const <Color>[
                        Color(0xFF981DB9),
                        Color(0xFF0F76CE),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Local do Evento',
                  style: comp20Str(),
                ),
                const SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      '${localData['event']['name'] ?? ''}',
                      style: comp20Out(),
                    ),
                    const SizedBox(height: 30),
                    GradientText(
                      '${localData['']}',
                      style: const TextStyle(
                        fontFamily: 'OUTFIT',
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                      colors: const <Color>[
                        Color(0xFF981DB9),
                        Color(0xFF0F76CE),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Rua do Lazer, 789',
                      style: comp20Out(),
                    ),
                    Text(
                      'Bairro Vila Alegre',
                      style: comp20Out(),
                    ),
                    Text(
                      'Cidade: Belo Horizonte',
                      style: comp20Out(),
                    ),
                    Text(
                      'Estado: MG',
                      style: comp20Out(),
                    ),
                    Text(
                      'CEP: 34567-890',
                      style: comp20Out(),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Data e Horário',
                      style: comp20Str(),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      '03/06/23',
                      style: comp20Out(),
                    ),
                    Text(
                      '18h',
                      style: comp20Out(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> localInfo() async {
    try {
      String expenseListApi = dotenv.get('API_HOST', fallback: '');

      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();

      var url = Uri.parse('${expenseListApi}api/days');
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
        log('DADOS DO USUARIO FINAL $localInfo()');
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
