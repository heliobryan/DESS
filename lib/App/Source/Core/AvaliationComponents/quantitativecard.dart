import 'package:dess/App/Source/Core/components.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:shared_preferences/shared_preferences.dart';

LinearGradient gradientCenter() {
  return const LinearGradient(
    colors: [Colors.blue, Colors.purple],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}

TextStyle comp15Out() {
  return const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}

TextStyle comp10Out() {
  return const TextStyle(
    fontSize: 10,
    color: Colors.white,
  );
}

TextStyle comp9Out() {
  return const TextStyle(
    fontSize: 9,
    color: Colors.white,
  );
}

class QuantitativeCard extends StatefulWidget {
  final String title;
  final int passesFeitos;
  final int correctPass;
  final int incorrectPass;
  final double notaFinal;

  const QuantitativeCard({
    super.key,
    required this.title,
    required this.passesFeitos,
    required this.correctPass,
    required this.incorrectPass,
    required this.notaFinal,
  });

  @override
  // ignore: library_private_types_in_public_api
  _QuantitativeCardState createState() => _QuantitativeCardState();
}

class _QuantitativeCardState extends State<QuantitativeCard> {
  int passesFeitos = 0;
  int passesCertos = 0;
  int passesErrados = 0;
  double notaFinal = 0.0;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  // Carregar dados do SharedPreferences
  Future<void> _loadData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      passesFeitos =
          prefs.getInt('${widget.title}_passesFeitos') ?? widget.passesFeitos;
      passesCertos =
          prefs.getInt('${widget.title}_passesCertos') ?? widget.correctPass;
      passesErrados =
          prefs.getInt('${widget.title}_passesErrados') ?? widget.incorrectPass;
      notaFinal =
          prefs.getDouble('${widget.title}_notaFinal') ?? widget.notaFinal;
    });
  }

  // Salvar dados no SharedPreferences
  Future<void> _saveData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('${widget.title}_passesFeitos', passesFeitos);
    await prefs.setInt('${widget.title}_passesCertos', passesCertos);
    await prefs.setInt('${widget.title}_passesErrados', passesErrados);
    await prefs.setDouble('${widget.title}_notaFinal', notaFinal);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double cardWidth = constraints.maxWidth * 0.9;
        double cardHeight = 120;

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
                    child: EditQuantitativeCard(
                      title: widget.title,
                      passesFeitos: passesFeitos,
                      passesCertos: passesCertos,
                      passesErrados: passesErrados,
                      notaFinal: notaFinal,
                    ),
                  ),
                );

                if (result != null) {
                  setState(() {
                    passesCertos = result['passesCertos'] ?? passesCertos;
                    passesErrados = result['passesErrados'] ?? passesErrados;
                    notaFinal = result['notaFinal']?.toDouble() ?? notaFinal;
                    passesFeitos = passesCertos + passesErrados;

                    _saveData();
                  });
                }
              },
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 5),
                      Text(
                        widget.title,
                        style: comp15Out(),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  const Icon(
                                    Icons.sports_soccer,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Text(
                                    '$passesFeitos',
                                    style: comp15Out(),
                                  ),
                                  Text(
                                    'Passes feitos',
                                    style: comp10Out(),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 15),
                              Image.asset('assets/images/vertline.png'),
                              const SizedBox(width: 15),
                              Column(
                                children: [
                                  const Icon(
                                    Icons.check,
                                    color: Color(0xFF00FF38),
                                    size: 20,
                                  ),
                                  Text(
                                    '$passesCertos',
                                    style: comp15Out(),
                                  ),
                                  Text(
                                    'Passes certos',
                                    style: comp10Out(),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 15),
                              Image.asset('assets/images/vertline.png'),
                              const SizedBox(width: 15),
                              Column(
                                children: [
                                  const Icon(
                                    Icons.dangerous_outlined,
                                    color: Color(0xFFE70000),
                                    size: 20,
                                  ),
                                  Text(
                                    '$passesErrados',
                                    style: comp15Out(),
                                  ),
                                  Text(
                                    'Passes errados',
                                    style: comp9Out(),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 15),
                              Image.asset('assets/images/vertline.png'),
                              const SizedBox(width: 15),
                              Column(
                                children: [
                                  const Icon(
                                    Icons.account_circle_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Text(
                                    notaFinal.toStringAsFixed(1),
                                    style: comp15Out(),
                                  ),
                                  Text(
                                    'Nota final',
                                    style: comp10Out(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
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

class EditQuantitativeCard extends StatefulWidget {
  final String title;
  final int passesFeitos;
  final int passesCertos;
  final int passesErrados;
  final double notaFinal;

  const EditQuantitativeCard({
    super.key,
    required this.title,
    this.passesFeitos = 0,
    this.passesCertos = 0,
    this.passesErrados = 0,
    this.notaFinal = 0.0,
  });

  @override
  // ignore: library_private_types_in_public_api
  _EditQuantitativeCardState createState() => _EditQuantitativeCardState();
}

class _EditQuantitativeCardState extends State<EditQuantitativeCard> {
  late int _passesCertos;
  late int _passesErrados;
  late double _notaFinal;

  @override
  void initState() {
    super.initState();
    _passesCertos = widget.passesCertos;
    _passesErrados = widget.passesErrados;
    _notaFinal = widget.notaFinal;
  }

  void _updateNotaFinal() {
    setState(() {
      int totalPasses = _passesCertos + _passesErrados;
      _notaFinal =
          totalPasses > 0 ? (_passesCertos / totalPasses).clamp(0, 1) * 10 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        children: [
          Text(
            widget.title,
            style: comp15Out(),
          ),
          const SizedBox(height: 20),
          Container(
            width: 317,
            height: 117,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              border: GradientBoxBorder(
                gradient: gradientCenter(),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.check,
                    size: 30,
                    color: Colors.green,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Passes certos',
                    style: comp15Out(),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    width: 280,
                    height: 28,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      border: GradientBoxBorder(
                        gradient: gradientCenter(),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (_passesCertos > 0) _passesCertos--;
                              _updateNotaFinal();
                            });
                          },
                          icon: const Icon(
                            Icons.horizontal_rule_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '$_passesCertos',
                          style: comp15Out(),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _passesCertos++;
                              _updateNotaFinal();
                            });
                          },
                          icon: const Icon(
                            Icons.add,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Layout dos passes errados
          Container(
            width: 317,
            height: 117,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              border: GradientBoxBorder(
                gradient: gradientCenter(),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.close,
                    size: 30,
                    color: Colors.red,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Passes errados',
                    style: comp15Out(),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    width: 280,
                    height: 28,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      border: GradientBoxBorder(
                        gradient: gradientCenter(),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (_passesErrados > 0) _passesErrados--;
                              _updateNotaFinal();
                            });
                          },
                          icon: const Icon(
                            Icons.horizontal_rule_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '$_passesErrados',
                          style: comp15Out(),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _passesErrados++;
                              _updateNotaFinal();
                            });
                          },
                          icon: const Icon(
                            Icons.add,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Layout da nota final
          Container(
            width: 317,
            height: 217,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              border: GradientBoxBorder(
                gradient: gradientCenter(),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.account_circle_outlined,
                    size: 40,
                    color: Colors.white,
                  ),
                  Text(
                    'Nota Final',
                    style: comp15Out(),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      border: GradientBoxBorder(
                        gradient: gradientCenter(),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        _notaFinal.toStringAsFixed(1),
                        style: comp16Out(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Botão de salvar
                  Container(
                    width: 120,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      border: GradientBoxBorder(
                        gradient: gradientCenter(),
                      ),
                    ),
                    child: Center(
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).pop({
                            'passesCertos': _passesCertos,
                            'passesErrados': _passesErrados,
                            'notaFinal': _notaFinal,
                          });
                        },
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.transparent),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                        ),
                        child: Text(
                          'Salvar',
                          style: comp15Out(),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
