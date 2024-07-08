import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class AvatecPage extends StatelessWidget {
  const AvatecPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF1E1E1E),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 25,
          ),
          onPressed: () => Navigator.pop(context, 'avaliationPage'),
        ),
        title: const Text(
          'Técnica',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'STRETCH',
          ),
        ),
        actions: [
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
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
                      'Passes',
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
                      'Finalização',
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
                      'Contr. de bola',
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
              width: 361,
              height: 111,
              child: OutlineGradientButton(
                radius: const Radius.circular(12),
                strokeWidth: 1,
                gradient: const LinearGradient(
                  colors: <Color>[
                    Color(0xFF981DB9),
                    Color(0xFF0F76CE),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Avaliação - Domínio e Passe',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OUTFIT',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 361,
              height: 111,
              child: OutlineGradientButton(
                radius: const Radius.circular(12),
                strokeWidth: 1,
                gradient: const LinearGradient(
                  colors: <Color>[
                    Color(0xFF981DB9),
                    Color(0xFF0F76CE),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Avaliação - Cruzamento',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OUTFIT',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 361,
              height: 111,
              child: OutlineGradientButton(
                radius: const Radius.circular(12),
                strokeWidth: 1,
                gradient: const LinearGradient(
                  colors: <Color>[
                    Color(0xFF981DB9),
                    Color(0xFF0F76CE),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Avaliação - Passe na frente',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OUTFIT',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
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
      ),
    );
  }
}
