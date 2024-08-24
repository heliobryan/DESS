import 'dart:convert';
import 'dart:developer';
import 'package:dess/App/Source/Core/CardComponents/cards.dart';
import 'package:http/http.dart' as http;
import 'package:dess/App/Source/Core/components.dart';
import 'package:dess/App/Source/Screens/Home/Avaliation/avatec_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AvafisPage extends StatefulWidget {
  final List<dynamic> subCriterias;
  const AvafisPage({
    super.key,
    required this.subCriterias,
  });

  @override
  State<AvafisPage> createState() => _AvafisPageState();
}

class _AvafisPageState extends State<AvafisPage> {
  List subCriteriaList = [];

  @override
  void initState() {
    super.initState();
    getSubcriteria();
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
          onPressed: () => Navigator.pop(context, 'avaliationPage'),
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
          const BackgroudImage(),
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
                      'Name',
                      style: comp25Str(),
                    ),
                    Text(
                      'Atacante - Sub 13 - Society',
                      style: comp15Out(),
                    ),
                    Text(
                      'Escola Flamengo - Caratinga MG',
                      style: comp15Out(),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    itemBuilder: (context, index) {
                      final subCriteria = widget.subCriterias[index];

                      return SubCriteriaCard(
                        subCriterias: subCriteria,
                      );
                    },
                    itemCount: widget.subCriterias.length,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 149,
                  height: 23,
                  decoration: BoxDecoration(
                    border: GradientBoxBorder(
                      gradient: gradientLk(),
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.transparent,
                      side: const BorderSide(color: Colors.transparent),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CalendarPage(),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        DateFormat.yMd().format(
                          DateTime.now(),
                        ),
                        style: comp15Out(),
                      ),
                    ),
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

  Future<void> getSubcriteria() async {
    try {
      String expenseListApi = dotenv.get('API_HOST', fallback: '');

      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      var url = Uri.parse('${expenseListApi}api/subcriteria');
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
          subCriteriaList = decode;
        });

        // log('DADOS DO USUARIO FINAL $userData');
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
