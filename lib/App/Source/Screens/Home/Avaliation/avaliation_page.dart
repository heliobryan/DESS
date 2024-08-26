import 'dart:convert';
import 'dart:developer';
import 'package:dess/App/Source/Core/CardComponents/cards.dart';
import 'package:http/http.dart' as http;
import 'package:dess/App/Source/Core/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AvaliationPage extends StatefulWidget {
  final Map<String, dynamic> participantData;

  const AvaliationPage({
    super.key,
    required this.participantData,
  });

  @override
  State<AvaliationPage> createState() => _AvaliationPageState();
}

class _AvaliationPageState extends State<AvaliationPage> {
  List criteriaList = [];

  @override
  void initState() {
    super.initState();
    getCriteria();
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
                  child: ListView.builder(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    itemBuilder: (context, index) {
                      final criterias = criteriaList[index];

                      return CriteriaCard(
                        criterias: criterias,
                        participantData: widget.participantData,
                      );
                    },
                    itemCount: criteriaList.length,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> getCriteria() async {
    try {
      String expenseListApi = dotenv.get('API_HOST', fallback: '');

      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      var url = Uri.parse('${expenseListApi}api/criteria');
      final token = sharedPreferences.getString('token');
      var restAwnser = await http.get(
        url,
        headers: {
          'Authorization': 'Bearer $token',
        },
      );
      if (restAwnser.statusCode == 200) {
        final decode = jsonDecode(restAwnser.body);
        setState(() {
          criteriaList = decode;
        });
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
