import 'package:dess/App/Source/Core/components.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:intl/intl.dart';

class PassportPage extends StatefulWidget {
  const PassportPage({super.key});

  @override
  State<PassportPage> createState() => _PassportPageState();
}

class _PassportPageState extends State<PassportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Stack(
        children: [
          const GradientBack(),
          const BackgroudImage(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 90),
                  Text(
                    'Passaporte B.',
                    style: comp20Str(),
                  ),
                  const SizedBox(width: 40),
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
              Container(
                width: 112,
                height: 110,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: GradientBoxBorder(
                    width: 3,
                    gradient: gradientLk(),
                  ),
                ),
                child: const Icon(
                  Icons.account_circle_outlined,
                  color: Colors.white,
                  size: 105,
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  Text(
                    'Name',
                    style: comp20Str(),
                  ),
                  Text(
                    'Atacante - Sub 13 - Society',
                    style: comp15Out(),
                  ),
                  Text(
                    'Escola Flamengo - Caratinga MG',
                    style: comp15Out(),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 105,
                    height: 23,
                    decoration: BoxDecoration(
                      border: GradientBoxBorder(
                        gradient: gradientLk(),
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Atual (Sub 13)',
                        style: comp15Out(),
                      ),
                    ),
                  ),
                  Container(
                    width: 105,
                    height: 23,
                    decoration: BoxDecoration(
                      border: GradientBoxBorder(
                        gradient: gradientLk(),
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Sub 15',
                        style: comp15Out(),
                      ),
                    ),
                  ),
                  Container(
                    width: 105,
                    height: 23,
                    decoration: BoxDecoration(
                      border: GradientBoxBorder(
                        gradient: gradientLk(),
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Sub 16',
                        style: comp15Out(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                width: 149,
                height: 23,
                decoration: BoxDecoration(
                  border: GradientBoxBorder(
                    gradient: gradientLk(),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.transparent,
                    side: const BorderSide(color: Colors.transparent),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      DateFormat.yMd().format(
                        DateTime.now(),
                      ),
                      style: comp15Out(),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(height: 30),
              Container(
                width: 315,
                height: 243,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  ),
                  border: GradientBoxBorder(
                    gradient: gradientDD(),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Text(
                        'Dados Biológicos Atuais',
                        style: comp25Out(),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Peso:',
                        style: comp20Out(),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Altura:',
                        style: comp20Out(),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Idade:',
                        style: comp20Out(),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'IMC',
                        style: comp20Out(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
