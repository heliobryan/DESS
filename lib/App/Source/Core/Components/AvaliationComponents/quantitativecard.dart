import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dess/App/Source/Core/Components/GlobalComponents/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:shared_preferences/shared_preferences.dart';

class QuantitativeCard extends StatefulWidget {
  final String title;
  final String participantId;
  final String itemID;
  final String evaluationId;

  const QuantitativeCard({
    super.key,
    required this.title,
    required this.participantId,
    required this.itemID,
    required this.evaluationId,
  });

  @override
  State<QuantitativeCard> createState() => _QuantitativeCardState();
}

class _QuantitativeCardState extends State<QuantitativeCard> {
  int correctAttempts = 0;
  int incorrectAttempts = 0;
  bool isSaving = false;

  int get totalAttempts => correctAttempts + incorrectAttempts;

  void incrementCorrect() {
    setState(() {
      correctAttempts++;
    });
  }

  void decrementCorrect() {
    setState(() {
      if (correctAttempts > 0) correctAttempts--;
    });
  }

  void incrementIncorrect() {
    setState(() {
      incorrectAttempts++;
    });
  }

  void decrementIncorrect() {
    setState(() {
      if (incorrectAttempts > 0) incorrectAttempts--;
    });
  }

  Future<void> saveData() async {
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
      print('correct_attempt: $correctAttempts');
      print('fail_attempt: $incorrectAttempts');
      print('attempt: $totalAttempts');

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
          'participant_id': widget.participantId,
          'correct_attempt': correctAttempts,
          'fail_attempt': incorrectAttempts,
          'attempt': totalAttempts,
          'score': totalAttempts,
        }),
      );

      if (response.statusCode == 201) {
        final decoded = jsonDecode(response.body);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Dados salvos com sucesso: ${decoded['score']}'),
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
      height: 400,
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
            child: Column(
              children: [
                Text(
                  'TENTATIVAS CORRETAS',
                  style: comp12Out(),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildButton('-', decrementCorrect),
                    const SizedBox(width: 15),
                    _buildValueBox(correctAttempts),
                    const SizedBox(width: 15),
                    _buildButton('+', incrementCorrect),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'TENTATIVAS INCORRETAS',
                  style: comp12Out(),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildButton('-', decrementIncorrect),
                    const SizedBox(width: 15),
                    _buildValueBox(incorrectAttempts),
                    const SizedBox(width: 15),
                    _buildButton('+', incrementIncorrect),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Text(
            'TENTATIVAS TOTAIS',
            style: comp12Out(),
          ),
          const SizedBox(height: 5),
          _buildValueBox(totalAttempts),
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
              onPressed: isSaving ? null : saveData,
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

  Widget _buildButton(String label, VoidCallback onPressed) {
    return Container(
      width: 70,
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
        onPressed: onPressed,
        child: Center(
          child: Text(
            label,
            style: comp20Str(),
          ),
        ),
      ),
    );
  }

  Widget _buildValueBox(int value) {
    return Container(
      width: 70,
      height: 50,
      decoration: BoxDecoration(
        border: GradientBoxBorder(
          gradient: gradientLk(),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Center(
        child: Text(
          '$value',
          style: comp20Str(),
        ),
      ),
    );
  }
}
