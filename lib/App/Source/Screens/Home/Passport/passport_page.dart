import 'package:dess/App/Source/Core/components.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class PassportPage extends StatelessWidget {
  const PassportPage({super.key});

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
                  const Text(
                    'Passaporte B.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'STRETCH',
                    ),
                  ),
                  const SizedBox(width: 40),
                  IconButton(
                    icon: const Icon(
                      Icons.exit_to_app,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                width: 112,
                height: 110,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  border: GradientBoxBorder(
                    width: 3,
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF981DB9),
                        Color(0xFF0F76CE),
                      ],
                    ),
                  ),
                ),
                child: const Icon(
                  Icons.account_circle_outlined,
                  color: Colors.white,
                  size: 105,
                ),
              ),
              const SizedBox(height: 10),
              const Column(
                children: [
                  Text(
                    'Name',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'STRETCH',
                    ),
                  ),
                  Text(
                    'Atacante - Sub 13 - Society',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'OUTFIT',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Escola Flamengo - Caratinga MG',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'OUTFIT',
                      fontWeight: FontWeight.bold,
                    ),
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
                    decoration: const BoxDecoration(
                      border: GradientBoxBorder(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFF981DB9),
                            Color(0xFF0F76CE),
                          ],
                        ),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Atual (Sub 13)',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'OUTFIT',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    width: 105,
                    height: 23,
                    decoration: const BoxDecoration(
                      border: GradientBoxBorder(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFF981DB9),
                            Color(0xFF0F76CE),
                          ],
                        ),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Sub 15',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'OUTFIT',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    width: 105,
                    height: 23,
                    decoration: const BoxDecoration(
                      border: GradientBoxBorder(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFF981DB9),
                            Color(0xFF0F76CE),
                          ],
                        ),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Sub 16',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'OUTFIT',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                width: 149,
                height: 23,
                decoration: const BoxDecoration(
                  border: GradientBoxBorder(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF981DB9),
                        Color(0xFF0F76CE),
                      ],
                    ),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Data',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'OUTFIT',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 315,
                height: 243,
                child: OutlineGradientButton(
                  radius: const Radius.circular(12),
                  strokeWidth: 1,
                  gradient: const LinearGradient(
                    colors: <Color>[
                      Color(0xFF981DB9),
                      Color(0xFF0F76CE),
                    ],
                  ),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Dados Biológicos Atuais',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OUTFIT',
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Peso:',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OUTFIT',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Altura:',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OUTFIT',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Idade:',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OUTFIT',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'IMC:',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OUTFIT',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
