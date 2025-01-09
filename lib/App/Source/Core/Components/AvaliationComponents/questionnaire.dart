import 'package:dess/App/Source/Core/Components/GlobalComponents/components.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class QuestCard extends StatefulWidget {
  final String title;
  final List<String> options;
  final String correctAnswer;

  const QuestCard({
    super.key,
    required this.title,
    required this.options,
    required this.correctAnswer,
  });

  @override
  State<QuestCard> createState() => _QuestCardState();
}

class _QuestCardState extends State<QuestCard> {
  String? selectedOption; // Opção atualmente selecionada
  Map<String, Color?> optionFeedback = {}; // Feedback visual para cada opção

  @override
  void initState() {
    super.initState();
    // Inicializa o estado de feedback com null para todas as opções
    optionFeedback = {for (var option in widget.options) option: null};
  }

  void saveAnswer() {
    if (selectedOption == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Selecione uma opção antes de salvar.')),
      );
      return;
    }

    setState(() {
      // Define feedback visual
      optionFeedback = widget.options.asMap().map((_, option) {
        if (option == widget.correctAnswer) {
          // Sempre verde para a resposta correta
          return MapEntry(option, Colors.green.withOpacity(0.3));
        } else {
          // Vermelho apenas se a seleção foi incorreta
          return MapEntry(
            option,
            selectedOption == option ? Colors.red.withOpacity(0.3) : null,
          );
        }
      });
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          selectedOption == widget.correctAnswer
              ? 'Resposta correta!'
              : 'Resposta errada.',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.9,
          maxHeight: MediaQuery.of(context).size.height * 0.8,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          border: GradientBoxBorder(
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xFF981DB9),
                Color(0xFF0F76CE),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Center(
              child: Text(
                widget.title,
                style: comp20Out(),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: widget.options
                      .map(
                        (option) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: SubQuestCard(
                            option: option,
                            isSelected: selectedOption == option,
                            feedbackColor: optionFeedback[option],
                            onTap: () {
                              setState(() {
                                selectedOption = option;
                                // Reseta o feedback ao selecionar outra opção
                                optionFeedback = {
                                  for (var opt in widget.options) opt: null
                                };
                              });
                            },
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  border: GradientBoxBorder(
                    gradient: gradientLk(),
                  ),
                ),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.transparent),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                  onPressed: saveAnswer,
                  child: Center(
                    child: Text(
                      'SALVAR',
                      style: comp15Str(),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

class SubQuestCard extends StatelessWidget {
  final String option;
  final bool isSelected;
  final Color? feedbackColor; // Feedback visual do cartão
  final VoidCallback onTap;

  const SubQuestCard({
    super.key,
    required this.option,
    required this.isSelected,
    required this.feedbackColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.9,
          ),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
            color: feedbackColor, // Define a cor de feedback
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            border: GradientBoxBorder(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF981DB9),
                  Color(0xFF0F76CE),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          child: Center(
            child: Text(
              option,
              style: comp15Out(),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
