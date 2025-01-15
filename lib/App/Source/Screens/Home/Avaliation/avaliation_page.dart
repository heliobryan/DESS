import 'dart:convert';
import 'dart:developer';
import 'package:dess/App/Source/Core/Components/Cards/cards.dart';
import 'package:dess/App/Source/Screens/Home/Avaliation/avafis.dart';
import 'package:dess/App/Source/Screens/Home/Avaliation/AvaliationTools/timer.dart';
import 'package:http/http.dart' as http;
import 'package:dess/App/Source/Core/Components/GlobalComponents/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AvaliationPage extends StatefulWidget {
  final String evaluationId;
  final Map<String, dynamic> participantData;

  const AvaliationPage({
    super.key,
    required this.evaluationId,
    required this.participantData,
    required evaluationData,
  });

  @override
  State<AvaliationPage> createState() => _AvaliationPageState();
}

class _AvaliationPageState extends State<AvaliationPage> {
  late Future<List> criteriaList;

  @override
  void initState() {
    super.initState();

    // Log para verificar os dados recebidos
    log('AvaliationPage - Dados recebidos:');
    log('evaluationId: ${widget.evaluationId}');
    log('participantData: ${widget.participantData}');

    criteriaList = getCriteria();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 20,
          ),
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
        title: Text(
          'Critérios',
          style: comp20Str(),
        ),
      ),
      body: Stack(
        children: [
          const GradientBack(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 170),
                Expanded(
                  child: FutureBuilder<List>(
                    future: criteriaList,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (snapshot.hasError) {
                        return const Center(
                          child: Text(
                            'Erro ao carregar os critérios',
                            style: TextStyle(color: Colors.red),
                          ),
                        );
                      } else if (snapshot.hasData &&
                          snapshot.data!.isNotEmpty) {
                        return ListView.builder(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 10),
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            final criterias = snapshot.data![index];
                            return CriteriaCard(
                              criterias: criterias,
                              participantData: widget.participantData,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AvafisPage(
                                      subCriterias: criterias['subCriterias'],
                                      participantData: widget.participantData,
                                      evaluationId: widget
                                          .evaluationId, // Passando o evaluationId
                                    ),
                                  ),
                                );
                              },
                              evaluationId: widget
                                  .evaluationId, // Passando evaluationId para CriteriaCard
                            );
                          },
                        );
                      } else {
                        return const Center(
                          child: Text(
                            'Nenhum critério encontrado',
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                      }
                    },
                  ),
                ),
                TimerCard(),
                PassPortCard(
                  participantData: widget.participantData,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<List> getCriteria() async {
    try {
      String expenseListApi = dotenv.get('API_HOST', fallback: '');
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      var url =
          Uri.parse('${expenseListApi}api/criteria?page=1&perPage=20&getAll=1');
      final token = sharedPreferences.getString('token');
      var restAwnser = await http.get(
        url,
        headers: {
          'Authorization': 'Bearer $token',
        },
      );
      if (restAwnser.statusCode == 200) {
        final decode = jsonDecode(restAwnser.body);
        return decode;
      } else {
        throw Exception('Erro ao buscar critérios');
      }
    } catch (e) {
      log(e.toString());
      throw Exception('Erro ao buscar critérios');
    }
  }
}
