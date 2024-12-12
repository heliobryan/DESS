import 'package:dess/App/Source/Core/Components/components.dart';
import 'package:dess/App/Source/Screens/Home/Manage/Rank/rank_page.dart';
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
                  Column(
                    children: [
                      Text(
                        'Gestão de',
                        style: comp20Str(),
                      ),
                      Text(
                        'Carreira',
                        style: comp20Str(),
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
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                      border: GradientBoxBorder(
                        gradient: gradientLk(),
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
                              Text(
                                'Gestão de Imagem',
                                style: comp20Out(),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: 193,
                                height: 23,
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
                                    side: const BorderSide(
                                        color: Colors.transparent),
                                  ),
                                  onPressed: () => Navigator.pushNamed(
                                    context,
                                    'imageManagePage',
                                  ),
                                  child: Text(
                                    'Melhores desempenhos',
                                    style: comp10Out(),
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
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                      border: GradientBoxBorder(
                        gradient: gradientLk(),
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
                              Text(
                                'Competições',
                                style: comp20Out(),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: 193,
                                height: 23,
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
                                    side: const BorderSide(
                                        color: Colors.transparent),
                                  ),
                                  onPressed: () =>
                                      Navigator.pushNamed(context, 'compPage'),
                                  child: Text(
                                    'Já foram jogadas',
                                    style: comp15Out(),
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
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                      border: GradientBoxBorder(
                        gradient: gradientLk(),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/crown.svg',
                          ),
                          const SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20),
                              Text(
                                'Ranking',
                                style: comp20Out(),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: 193,
                                height: 23,
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
                                    side: const BorderSide(
                                        color: Colors.transparent),
                                  ),
                                  onPressed: () =>
                                      Navigator.pushNamed(context, 'rankPage'),
                                  child: Text(
                                    'Ranqueamento',
                                    style: comp15Out(),
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
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                      border: GradientBoxBorder(
                        gradient: gradientLk(),
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
                              Text(
                                'Saúde',
                                style: comp20Out(),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: 193,
                                height: 23,
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
                                    side: const BorderSide(
                                        color: Colors.transparent),
                                  ),
                                  onPressed: () => Navigator.pushNamed(
                                      context, 'healthPage'),
                                  child: Text(
                                    'Lesões ou Fraturas',
                                    style: comp15Out(),
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
