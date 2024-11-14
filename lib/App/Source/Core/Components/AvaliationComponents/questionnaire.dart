import 'package:dess/App/Source/Core/Components/components.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class QuestCard extends StatefulWidget {
  final String question;
  final List<String> options;
  final Function(double nota) onSave;

  const QuestCard({
    super.key,
    required this.question,
    required this.options,
    required this.onSave,
  });

  @override
  State<QuestCard> createState() => _QuestCardState();
}

class _QuestCardState extends State<QuestCard> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 325,
      height: 390,
      child: Container(
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
            Text(
              'Avaliação',
              style: comp20Str(),
            ),
            const SizedBox(height: 5),
            Text(
              widget.question,
              style: comp15Str(),
            ),
            const SizedBox(height: 25),
            // Lista de opções
            Column(
              children: widget.options.map((option) {
                return SubQuestCard(
                  options: option,
                  isSelected: selectedOption == option,
                  onSelect: () {
                    setState(() {
                      selectedOption = option;
                    });
                  },
                );
              }).toList(),
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
                  onPressed: () {
                    // Executa a função de salvar com uma pontuação fictícia
                    widget
                        .onSave(selectedOption == 'Belo Horizonte' ? 1.0 : 0.0);
                  },
                  child: Center(
                    child: Text(
                      'SALVAR',
                      style: comp15Str(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SubQuestCard extends StatelessWidget {
  final String options;
  final bool isSelected;
  final VoidCallback onSelect;

  const SubQuestCard({
    super.key,
    required this.options,
    required this.isSelected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelect,
      child: SizedBox(
        width: 300,
        height: 40,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            border: GradientBoxBorder(
              gradient: LinearGradient(
                colors: isSelected
                    ? [Color(0xFF0F76CE), Color(0xFF981DB9)]
                    : [Color(0xFF981DB9), Color(0xFF0F76CE)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.transparent),
            ),
            onPressed: onSelect,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  options,
                  style: comp15Out(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
