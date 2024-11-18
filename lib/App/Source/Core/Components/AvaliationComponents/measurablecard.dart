import 'package:dess/App/Source/Core/Components/components.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MeasurableCard extends StatefulWidget {
  final String title;
  final String measurement;
  final String unit;

  const MeasurableCard({
    super.key,
    required this.title,
    required this.measurement,
    required this.unit,
  });

  @override
  // ignore: library_private_types_in_public_api
  _MeasurableCardState createState() => _MeasurableCardState();
}

class _MeasurableCardState extends State<MeasurableCard> {
  String measurement;
  String unit;

  _MeasurableCardState()
      : measurement = "",
        unit = "";

  @override
  void initState() {
    super.initState();
    measurement = widget.measurement;
    unit = widget.unit;
    _loadData();
  }

  Future<void> _loadData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      measurement =
          prefs.getString('${widget.title}_measurement') ?? widget.measurement;
      unit = prefs.getString('${widget.title}_unit') ??
          widget.unit; // Carrega a unidade específica
    });
  }

  Future<void> _saveData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('${widget.title}_measurement', measurement);
    await prefs.setString(
        '${widget.title}_unit', unit); // Salva a unidade específica
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
                      measurement: measurement,
                      title: widget.title,
                    ),
                  ),
                );

                if (result != null) {
                  setState(() {
                    measurement = result['measurement'] ?? measurement;
                    unit = result['unit'] ?? unit;
                    _saveData();
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
                        widget.title,
                        style: comp15Out(),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '$measurement ${widget.unit.isNotEmpty ? widget.unit : ''}',
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
  final String measurement;
  final String title;

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
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        widget.title,
                        style: comp20Out(),
                      ),
                      SizedBox(
                        height: 20,
                      ),
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
                      SizedBox(
                        height: 30,
                      ),
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
