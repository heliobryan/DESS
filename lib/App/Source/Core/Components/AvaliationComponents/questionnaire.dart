import 'package:dess/App/Source/Core/Components/components.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class QuestCard extends StatefulWidget {
  final String title;
  final List<String> options;

  const QuestCard({
    super.key,
    required this.title,
    required this.options,
  });

  @override
  State<QuestCard> createState() => _QuestCardState();
}

class _QuestCardState extends State<QuestCard> {
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
                      .map((option) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: SubQuestCard(options: option),
                          ))
                      .toList(),
                ),
              ),
            ),
            const SizedBox(height: 20), // Espaço entre as opções e o botão
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
                  onPressed: () {},
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

class SubQuestCard extends StatefulWidget {
  final String options;
  const SubQuestCard({
    super.key,
    required this.options,
  });

  @override
  State<SubQuestCard> createState() => _SubQuestCardState();
}

class _SubQuestCardState extends State<SubQuestCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width *
              0.9, // Responsivo com limite de largura
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.transparent),
            padding: EdgeInsets.zero,
          ),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  widget.options,
                  style: comp15Out(),
                  overflow:
                      TextOverflow.ellipsis, // Encaminha o texto que não cabe
                  maxLines: 2, // Permite duas linhas para evitar sobreposição
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
