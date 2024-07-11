import 'dart:ui';

import 'package:flutter/material.dart';

class Form1Page extends StatelessWidget {
  const Form1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 292,
                height: 146,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0F76CE),
                      Color(0xFF0F76CE),
                      Color(0xFF981DB9),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 200, sigmaY: 300),
                  child: Container(
                    color: Colors.black.withOpacity(0),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 292,
                    height: 146,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color.fromARGB(255, 29, 0, 36),
                          Color.fromARGB(149, 3, 65, 119),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 200, sigmaY: 50),
                      child: Container(
                        color: Colors.black.withOpacity(0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 292,
                height: 146,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0F76CE),
                      Color(0xFF0F76CE),
                      Color(0xFF981DB9),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 200, sigmaY: 300),
                  child: Container(
                    color: Colors.black.withOpacity(0),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 292,
                    height: 146,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color.fromARGB(255, 29, 0, 36),
                          Color.fromARGB(149, 3, 65, 119),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 200, sigmaY: 50),
                      child: Container(
                        color: Colors.black.withOpacity(0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 292,
                height: 146,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0F76CE),
                      Color(0xFF0F76CE),
                      Color(0xFF981DB9),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 200, sigmaY: 300),
                  child: Container(
                    color: Colors.black.withOpacity(0),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 292,
                    height: 146,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color.fromARGB(255, 29, 0, 36),
                          Color.fromARGB(149, 3, 65, 119),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 200, sigmaY: 50),
                      child: Container(
                        color: Colors.black.withOpacity(0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
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
                IconButton(
                  style: IconButton.styleFrom(
                    foregroundColor: const Color(0xFF981DB9),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                  icon: Image.asset('assets/images/sub9vetor.png'),
                  onPressed: () {},
                ),
                IconButton(
                  style: IconButton.styleFrom(
                    foregroundColor: const Color(0xFF981DB9),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                  icon: Image.asset('assets/images/sub11vetor.png'),
                  onPressed: () {},
                ),
                IconButton(
                  style: IconButton.styleFrom(
                    foregroundColor: const Color(0xFF981DB9),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                  icon: Image.asset('assets/images/sub10vetor.png'),
                  onPressed: () {},
                ),
                IconButton(
                  style: IconButton.styleFrom(
                    foregroundColor: const Color(0xFF981DB9),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                  icon: Image.asset('assets/images/sub13vetor.png'),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
