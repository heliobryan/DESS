import 'package:dess/App/Source/Core/components.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class Form1Page extends StatelessWidget {
  const Form1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Stack(
        children: [
          const GradientBack(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'QUAL ESPORTE',
                  style: comp20Str(),
                ),
                Text(
                  'VOCÊ DA TREINO?',
                  style: comp20Str(),
                ),
                const SizedBox(height: 10),
                IconButton(
                  style: IconButton.styleFrom(
                    foregroundColor: const Color(0xFF981DB9),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                  ),
                  icon: const Image(
                      image: AssetImage('assets/images/formvetor2.png')),
                  onPressed: () {},
                ),
                const SizedBox(height: 5),
                Text(
                  'FUTEBOL',
                  style: comp15Str(),
                ),
                const SizedBox(height: 5),
                IconButton(
                  style: IconButton.styleFrom(
                    foregroundColor: const Color(0xFF981DB9),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                  ),
                  icon: const Image(
                      image: AssetImage('assets/images/formvetor1.png')),
                  onPressed: () {},
                ),
                const SizedBox(height: 5),
                Text(
                  'BASQUETE',
                  style: comp15Str(),
                ),
                const SizedBox(height: 5),
                IconButton(
                  style: IconButton.styleFrom(
                    foregroundColor: const Color(0xFF981DB9),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                  ),
                  icon: const Image(
                      image: AssetImage('assets/images/formvetor3.png')),
                  onPressed: () {},
                ),
                const SizedBox(height: 5),
                Text(
                  'VÔLEI',
                  style: comp15Str(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Form2Page extends StatelessWidget {
  const Form2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Stack(
        children: [
          const GradientBack(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 70),
                Text(
                  'QUAL ESCOLA',
                  style: comp20Str(),
                ),
                Text(
                  'VOCÊ DA TREINO?',
                  style: comp20Str(),
                ),
                const SizedBox(height: 180),
                IconButton(
                  style: IconButton.styleFrom(
                    foregroundColor: const Color(0xFF981DB9),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                  ),
                  icon: const Image(
                      image: AssetImage('assets/images/vetorfla.png')),
                  onPressed: () {},
                ),
                Text(
                  'Escola',
                  style: comp15Str(),
                ),
                Text(
                  'Flamengo',
                  style: comp15Str(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Form3Page extends StatelessWidget {
  const Form3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Stack(
        children: [
          const GradientBack(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 90),
                Text(
                  'QUAL FAIXA',
                  style: comp20Str(),
                ),
                Text(
                  'ÉTARIA?',
                  style: comp20Str(),
                ),
                const SizedBox(height: 90),
                Container(
                  width: 341,
                  height: 62,
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
                      foregroundColor: const Color(0xFF981DB9),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      side: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'SUB 9',
                        style: comp40Out(),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 341,
                  height: 62,
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
                      foregroundColor: const Color(0xFF981DB9),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      side: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'SUB 11',
                        style: comp40Out(),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 341,
                  height: 62,
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
                      foregroundColor: const Color(0xFF981DB9),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      side: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'SUB 10',
                        style: comp40Out(),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 341,
                  height: 62,
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
                      foregroundColor: const Color(0xFF981DB9),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      side: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'SUB 13',
                        style: comp40Out(),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
