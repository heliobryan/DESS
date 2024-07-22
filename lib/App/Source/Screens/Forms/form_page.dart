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
                const Text(
                  'QUAL ESPORTE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'STRETCH',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'VOCÊ DA TREINO?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'STRETCH',
                    fontWeight: FontWeight.bold,
                  ),
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
                const Text(
                  'FUTEBOL',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'STRETCH',
                  ),
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
                const Text(
                  'BASQUETE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'STRETCH',
                  ),
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
                const Text(
                  'VÔLEI',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'STRETCH',
                  ),
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
                const Text(
                  'QUAL ESCOLA',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'STRETCH',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'VOCÊ DA TREINO?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'STRETCH',
                    fontWeight: FontWeight.bold,
                  ),
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
                const Text(
                  'Escola',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'STRETCH',
                  ),
                ),
                const Text(
                  'Flamengo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'STRETCH',
                  ),
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
                const Text(
                  'QUAL FAIXA',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'STRETCH',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'ÉTARIA?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'STRETCH',
                    fontWeight: FontWeight.bold,
                  ),
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
                    child: const Center(
                      child: Text(
                        'SUB 9',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OUTFIT',
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
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
                    child: const Center(
                      child: Text(
                        'SUB 11',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OUTFIT',
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
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
                    child: const Center(
                      child: Text(
                        'SUB 10',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OUTFIT',
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
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
                    child: const Center(
                      child: Text(
                        'SUB 13',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OUTFIT',
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
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
