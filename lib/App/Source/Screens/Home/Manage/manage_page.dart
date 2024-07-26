import 'package:dess/App/Source/Core/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class ManagePage extends StatefulWidget {
  const ManagePage({super.key});

  @override
  State<ManagePage> createState() => _ManagePageState();
}

class _ManagePageState extends State<ManagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GradientBack(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 115),
                  const Column(
                    children: [
                      Text(
                        'Gestão de',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'STRETCH',
                        ),
                      ),
                      Text(
                        'Carreira',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'STRETCH',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 70),
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
              const SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  Container(
                    width: 330,
                    height: 129,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      border: GradientBoxBorder(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFF981DB9),
                            Color(0xFF0F76CE),
                          ],
                        ),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/editorgradient.svg',
                          ),
                          const SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20),
                              const Text(
                                'Gestão de Imagem',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'OUTFIT',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: 193,
                                height: 23,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                  border: GradientBoxBorder(
                                    gradient: LinearGradient(
                                      colors: <Color>[
                                        Color(0xFF981DB9),
                                        Color(0xFF0F76CE),
                                      ],
                                    ),
                                  ),
                                ),
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    side: const BorderSide(
                                        color: Colors.transparent),
                                  ),
                                  onPressed: () => Navigator.pushNamed(
                                    context,
                                    'imageManagePage',
                                  ),
                                  child: const Text(
                                    'Melhores desempenhos',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'OUTFIT',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 330,
                    height: 129,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      border: GradientBoxBorder(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFF981DB9),
                            Color(0xFF0F76CE),
                          ],
                        ),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/event.svg',
                          ),
                          const SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20),
                              const Text(
                                'Competições',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'OUTFIT',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: 193,
                                height: 23,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                  border: GradientBoxBorder(
                                    gradient: LinearGradient(
                                      colors: <Color>[
                                        Color(0xFF981DB9),
                                        Color(0xFF0F76CE),
                                      ],
                                    ),
                                  ),
                                ),
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    side: const BorderSide(
                                        color: Colors.transparent),
                                  ),
                                  onPressed: () =>
                                      Navigator.pushNamed(context, 'compPage'),
                                  child: const Text(
                                    'Já foram jogadas',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'OUTFIT',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 330,
                    height: 129,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      border: GradientBoxBorder(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFF981DB9),
                            Color(0xFF0F76CE),
                          ],
                        ),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/cash.svg',
                          ),
                          const SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20),
                              const Text(
                                'Patrocinío',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'OUTFIT',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: 193,
                                height: 23,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                  border: GradientBoxBorder(
                                    gradient: LinearGradient(
                                      colors: <Color>[
                                        Color(0xFF981DB9),
                                        Color(0xFF0F76CE),
                                      ],
                                    ),
                                  ),
                                ),
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    side: const BorderSide(
                                        color: Colors.transparent),
                                  ),
                                  onPressed: () => Navigator.pushNamed(
                                      context, 'sponsorPage'),
                                  child: const Text(
                                    'Propostas',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'OUTFIT',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 330,
                    height: 129,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      border: GradientBoxBorder(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFF981DB9),
                            Color(0xFF0F76CE),
                          ],
                        ),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/health.svg',
                          ),
                          const SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20),
                              const Text(
                                'Saúde',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'OUTFIT',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: 193,
                                height: 23,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                  border: GradientBoxBorder(
                                    gradient: LinearGradient(
                                      colors: <Color>[
                                        Color(0xFF981DB9),
                                        Color(0xFF0F76CE),
                                      ],
                                    ),
                                  ),
                                ),
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    side: const BorderSide(
                                        color: Colors.transparent),
                                  ),
                                  onPressed: () => Navigator.pushNamed(
                                      context, 'healthPage'),
                                  child: const Text(
                                    'Lesões ou Fraturas',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'OUTFIT',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      backgroundColor: const Color(0xFF1E1E1E),
    );
  }
}
