import 'dart:convert';

import 'package:dess/App/Source/Core/Components/Cards/cards.dart';
import 'package:dess/App/Source/Core/Components/GlobalComponents/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class AvafisPage extends StatefulWidget {
  final List<dynamic> subCriterias;
  final Map<String, dynamic> participantData;
  final String evaluationId; // Adicionado o evaluationId

  const AvafisPage({
    super.key,
    required this.subCriterias,
    required this.participantData,
    required this.evaluationId, // Adicionado o evaluationId
  });

  @override
  State<AvafisPage> createState() => _AvafisPageState();
}

class _AvafisPageState extends State<AvafisPage> {
  Map<String, dynamic> userDados = {};
  String? token;

  @override
  void initState() {
    super.initState();
    validateEvaluationId();
    logParticipantData();
    loadToken();
  }

  void validateEvaluationId() {
    if (widget.evaluationId.isEmpty) {
      debugPrint(
          'AvafisPage - [ERROR] Evaluation ID não foi passado corretamente.');

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Erro'),
            content:
                const Text('O ID da avaliação não foi fornecido corretamente.'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      debugPrint(
          'AvafisPage - [INFO] Evaluation ID recebido: ${widget.evaluationId}');
    }
  }

  /// Log dos dados do participante
  void logParticipantData() {
    // ignore: avoid_print
    debugPrint(
        'AvafisPage - [INFO] Dados do participante: ${widget.participantData}');
  }

  Future<void> loadToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      token = sharedPreferences.getString('token');
    });
    if (token != null) {
      await userInfo();
    } else {
      // ignore: avoid_print
      debugPrint('AvafisPage - [ERROR] Token não encontrado');
    }
  }

  Future<void> userInfo() async {
    if (token == null) return;

    try {
      String apiHost = dotenv.get('API_HOST', fallback: '');
      var url = Uri.parse('${apiHost}api/user');
      var restAnswer = await http.get(
        url,
        headers: {
          'Authorization': 'Bearer $token',
        },
      );
      if (restAnswer.statusCode == 200) {
        final decode = jsonDecode(restAnswer.body);
        debugPrint('AvafisPage - [INFO] Resposta da API /api/user: $decode');

        if (decode.containsKey('name')) {
          setState(() {
            userDados = decode;
          });
        } else {
          debugPrint(
              'AvafisPage - [ERROR] Campo "name" não encontrado na resposta da API');
        }
      } else {
        debugPrint(
            'AvafisPage - [ERROR] Erro ao obter dados do usuário: ${restAnswer.statusCode}');
      }
    } catch (e) {
      debugPrint('AvafisPage - [ERROR] Erro ao obter dados do usuário: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 25,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Física',
          style: comp20Str(),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.exit_to_app,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => const ExitButton(),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          const GradientBack(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Container(
                  width: 112,
                  height: 110,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: GradientBoxBorder(
                      width: 3,
                      gradient: gradientLk(),
                    ),
                  ),
                  child: const Icon(
                    Icons.account_circle_outlined,
                    color: Colors.white,
                    size: 105,
                  ),
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    Text(
                      widget.participantData['user']['name'],
                      style: comp25Str(),
                    ),
                    Text(
                      '${widget.participantData['position']} - ${widget.participantData['category']} - ${widget.participantData['modality']['name']}',
                      style: comp15Out(),
                    ),
                    Text(
                      '${widget.participantData['team']['name']}',
                      style: comp15Out(),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                    itemCount: widget.subCriterias.length,
                    itemBuilder: (context, index) {
                      final subCriteria = widget.subCriterias[index];

                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: SubCriteriaCard(
                          subCriterias: subCriteria,
                          subCriteria: null,
                          onTap: () {},
                          onSubCriteriaPressed: (List<dynamic> items) {},
                          participantId: '',
                          evaluationId: widget.evaluationId,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
