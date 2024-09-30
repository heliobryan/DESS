import 'dart:convert';
import 'dart:developer';
import 'package:dess/App/Source/Core/CardComponents/cards.dart';
import 'package:dess/App/Source/Core/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class AgendaPage extends StatefulWidget {
  const AgendaPage({super.key});

  @override
  State<AgendaPage> createState() => _AgendaPageState();
}

class _AgendaPageState extends State<AgendaPage> {
  List eventList = [];
  List filteredEventList = []; // Lista filtrada para exibição

  @override
  void initState() {
    super.initState();
    getEvaluations();  // Obtém os dados da API ao iniciar a página
  }

  void filterEventsByMonth(int selectedMonth) {
    setState(() {
      filteredEventList = eventList.where((event) {
        String evaluationDate = event['eventday']['date']; // Data no formato yyyy-MM-dd
        DateTime parsedDate = DateTime.parse(evaluationDate);
        int eventMonth = parsedDate.month; // Obtém o mês do evento

        return eventMonth == selectedMonth; // Filtra pelo mês selecionado
      }).toList();
    });
  }

  Future<void> getEvaluations() async {
    try {
      String expenseListApi = dotenv.get('API_HOST', fallback: '');

      SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      var url = Uri.parse('${expenseListApi}api/evaluations?page=1');
      final token = sharedPreferences.getString('token');
      var restAnswer = await http.get(
        url,
        headers: {
          'Authorization': 'Bearer $token',
        },
      );
      if (restAnswer.statusCode == 200) {
        final decode = jsonDecode(restAnswer.body);
        setState(() {
          eventList = decode['data']; // Popula a lista com os dados da API
          filteredEventList = eventList; // Inicialmente, a lista filtrada é igual à lista completa
        });
      }
    } catch (e) {
      log(e.toString());
    }
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
          'Agenda',
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
                const SizedBox(height: 20),
                AgendaData(onMonthChanged: filterEventsByMonth), // Passa a função de filtro
                const SizedBox(height: 50),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    itemBuilder: (context, index) {
                      final event = filteredEventList[index]; // Usar a lista filtrada
                      return AgendaCard(event: event); // Passando os dados dinâmicos para o card
                    },
                    itemCount: filteredEventList.length,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}