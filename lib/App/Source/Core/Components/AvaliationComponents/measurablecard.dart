import 'package:dess/App/Source/Core/Components/components.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';

class MeasurableCard extends StatefulWidget {
  final String title;
  final String measurement;
  final String unit;

  const MeasurableCard({
    super.key,
    required this.title,
    required this.measurement,
    required this.unit,
    required measurableValue,
  });

  @override
  // ignore: library_private_types_in_public_api
  _MeasurableCardState createState() => _MeasurableCardState();
}

class _MeasurableCardState extends State<MeasurableCard> {
  late String title;
  late String measurement;
  late String unit;

  @override
  void initState() {
    super.initState();
    title = widget.title;
    measurement = widget.measurement;
    unit = widget.unit;
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
                final result = await showDialog<Map<String, dynamic>>(
                  context: context,
                  builder: (context) => Dialog(
                    backgroundColor: Colors.grey[900],
                    child: EditMeasurableCard(
                      title: title,
                      measurement: measurement,
                    ),
                  ),
                );

                if (result != null) {
                  setState(() {
                    title = result['title'] ?? title;
                    measurement = result['measurement'] ?? measurement;
                  });
                }
              },
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: comp15Out(),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            measurement,
                            style: comp20Str(),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            unit, // Mostra a unidade da API sem edição
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
  final String title;
  final String measurement;

  const EditMeasurableCard({
    super.key,
    required this.title,
    required this.measurement,
  });

  @override
  State<EditMeasurableCard> createState() => _EditMeasurableCardState();
}

class _EditMeasurableCardState extends State<EditMeasurableCard> {
  late TextEditingController _titleController;
  late TextEditingController _measurementController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.title);
    _measurementController = TextEditingController(text: widget.measurement);
  }

  @override
  void dispose() {
    _titleController.dispose();
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
              height: 400,
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
                      Text(
                        'Nome da avaliação',
                        style: comp15Str(),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 50,
                        width: 250,
                        child: TextField(
                          controller: _titleController,
                          style: comp20Out(),
                          decoration: InputDecoration(
                            prefix: const Text('   '),
                            contentPadding: const EdgeInsets.all(1),
                            border: GradientOutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(9)),
                              gradient: gradientLk(),
                              width: 1,
                            ),
                            focusedBorder: GradientOutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                              gradient: gradientLk(),
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Dados da Avaliação',
                        style: comp15Str(),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 50,
                        width: 180,
                        child: TextField(
                          keyboardType: const TextInputType.numberWithOptions(),
                          controller: _measurementController,
                          style: comp20Out(),
                          decoration: InputDecoration(
                            prefix: const Text('   '),
                            contentPadding: const EdgeInsets.all(1),
                            border: GradientOutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(9)),
                              gradient: gradientLk(),
                              width: 1,
                            ),
                            focusedBorder: GradientOutlineInputBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                              gradient: gradientLk(),
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        height: 50,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12),
                          ),
                          border: GradientBoxBorder(
                            gradient: gradientLk(),
                          ),
                        ),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.transparent),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop({
                              'title': _titleController.text,
                              'measurement': _measurementController.text,
                            });
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
