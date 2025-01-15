// ignore_for_file: avoid_print, use_build_context_synchronously

import 'dart:convert';
import 'package:dess/App/Source/Core/Components/GlobalComponents/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class Measurablecard extends StatefulWidget {
  final String title;
  final String participantId;
  final String measurement;
  final String unit;
  final String itemID;
  final String evaluationId;

  const Measurablecard({
    super.key,
    required this.title,
    required this.participantId,
    required this.measurement,
    required this.unit,
    required this.itemID,
    required this.evaluationId,
  });

  @override
  State<Measurablecard> createState() => _MeasurablecardState();
}

class _MeasurablecardState extends State<Measurablecard> {
  late TextEditingController _measurementController;
  bool isSaving = false;

  @override
  void initState() {
    super.initState();
    _measurementController = TextEditingController(text: widget.measurement);
  }

  @override
  void dispose() {
    _measurementController.dispose();
    super.dispose();
  }

  Future<void> saveMeasurement() async {
    setState(() {
      isSaving = true;
    });

    try {
      if (widget.evaluationId.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('evaluationId está vazio!')),
        );
        return;
      }

      print('Enviando avaliação com:');
      print('evaluationId: ${widget.evaluationId}');
      print('item_id: ${widget.itemID}');
      print('score: ${double.tryParse(_measurementController.text) ?? 0}');

      String apiHost = dotenv.get('API_HOST', fallback: '');
      var url = Uri.parse('${apiHost}api/judgments');

      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      final token = sharedPreferences.getString('token');

      if (token == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text('Token de autenticação não encontrado!')),
        );
        return;
      }

      final response = await http.post(
        url,
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'evaluation_id': widget.evaluationId,
          'item_id': widget.itemID,
          'score': double.tryParse(_measurementController.text) ?? 0,
          'participant_id': widget.participantId,
        }),
      );

      if (response.statusCode == 201) {
        final decoded = jsonDecode(response.body);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Julgamento criado com sucesso: ${decoded['score']}'),
          ),
        );
      } else if (response.statusCode == 400) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text('Dados inválidos! Verifique os valores.')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Erro na API: ${response.body}')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erro: $e')),
      );
    } finally {
      setState(() {
        isSaving = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325,
      height: 200,
      decoration: BoxDecoration(
        border: GradientBoxBorder(
          gradient: gradientLk(),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          Text(
            widget.title.toUpperCase(),
            style: comp15Str(),
          ),
          const SizedBox(height: 15),
          Center(
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                border: GradientBoxBorder(
                  gradient: gradientLk(),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(9),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      keyboardType: const TextInputType.numberWithOptions(),
                      controller: _measurementController,
                      style: comp20Out(),
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 10,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Row(
                      children: [
                        Text(
                          widget.unit.isNotEmpty ? widget.unit : '',
                          style: comp20Str(),
                        ),
                        Text(
                          widget.itemID,
                          style: const TextStyle(color: Colors.transparent),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            width: 200,
            height: 50,
            decoration: BoxDecoration(
              border: GradientBoxBorder(
                gradient: gradientLk(),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(9),
            ),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.transparent),
              ),
              onPressed: isSaving ? null : saveMeasurement,
              child: Center(
                child: isSaving
                    ? const CircularProgressIndicator()
                    : Text(
                        'SALVAR',
                        style: comp20Str(),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
