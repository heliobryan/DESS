import 'package:dess/App/Source/Core/Components/components.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MeasurableCard extends StatefulWidget {
  final String title; // Título do card
  final String measurement; // Valor padrão da medida
  final String unit; // Unidade fixa (da API)
  final String participantId; // Identificador único do participante
  final String itemId; // Identificador único do item (para separação)

  const MeasurableCard({
    super.key,
    required this.title,
    required this.measurement,
    required this.unit,
    required this.participantId,
    required this.itemId, // Novo parâmetro
  });

  @override
  _MeasurableCardState createState() => _MeasurableCardState();
}

class _MeasurableCardState extends State<MeasurableCard> {
  late String measurement; // Valor editável

  @override
  void initState() {
    super.initState();
    _loadData(); // Carrega os dados do participante ao iniciar
  }

  // Carrega os dados específicos para o participante e item
  Future<void> _loadData() async {
    Map<String, dynamic> participantData =
        await _loadParticipantData(widget.participantId, widget.itemId);
    setState(() {
      measurement = participantData['measurement'] ??
          widget.measurement; // Usa valor salvo ou o padrão
    });
  }

  // Função para salvar os dados do participante
  Future<void> _saveData(String newMeasurement) async {
    setState(() {
      measurement = newMeasurement; // Atualiza o valor local
    });

    // Salva os dados específicos do participante e item
    Map<String, dynamic> data = {
      'measurement': newMeasurement,
      'unit': widget.unit,
      'title': widget.title,
    };

    await _saveParticipantData(widget.participantId, widget.itemId,
        data); // Salva os dados do participante
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double cardWidth = constraints.maxWidth * 0.9;
        double cardHeight = 100;

        return SizedBox(
          width: cardWidth,
          height: cardHeight,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              border: GradientBoxBorder(
                gradient: gradientCenter(),
              ),
            ),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                side: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              onPressed: () async {
                final result = await showDialog<String>(
                  context: context,
                  builder: (context) => Dialog(
                    backgroundColor: Colors.grey[900],
                    child: EditMeasurableCard(
                      measurement: measurement,
                      title: widget.title,
                    ),
                  ),
                );

                if (result != null) {
                  _saveData(result); // Salva o novo valor localmente
                }
              },
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: comp15Out(),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '$measurement ${widget.unit}',
                            style: comp20Str(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class EditMeasurableCard extends StatefulWidget {
  final String measurement; // Valor atual da medida
  final String title; // Título do card

  const EditMeasurableCard({
    super.key,
    required this.measurement,
    required this.title,
  });

  @override
  State<EditMeasurableCard> createState() => _EditMeasurableCardState();
}

class _EditMeasurableCardState extends State<EditMeasurableCard> {
  late TextEditingController _measurementController;

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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: 317,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: GradientBoxBorder(
                  gradient: gradientDD(),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        widget.title,
                        style: comp20Out(),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 50,
                        width: 180,
                        child: TextField(
                          keyboardType: const TextInputType.numberWithOptions(),
                          controller: _measurementController,
                          style: comp20Out(),
                          decoration: const InputDecoration(
                            labelText: "Valor",
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        height: 50,
                        width: 180,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pop(_measurementController.text);
                          },
                          child: Text(
                            'SALVAR',
                            style: comp20Str(),
                          ),
                        ),
                      ),
                    ],
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
