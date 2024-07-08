import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class AvaliationPage extends StatelessWidget {
  const AvaliationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1E1E),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.exit_to_app_outlined,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
        title: const Text(
          'Avaliações',
          style: TextStyle(
            fontFamily: 'STRETCH',
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 295,
              child: OutlineGradientButton(
                strokeWidth: 1,
                gradient: const LinearGradient(
                  colors: <Color>[
                    Color(0xFF981DB9),
                    Color(0xFF0F76CE),
                  ],
                ),
                radius: const Radius.circular(12),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.sports_soccer,
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(width: 60),
                    Text(
                      'Técnica',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'OUTFIT',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                onTap: () => Navigator.pushNamed(context, 'avatecPage'),
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 295,
              child: OutlineGradientButton(
                strokeWidth: 1,
                gradient: const LinearGradient(
                  colors: <Color>[
                    Color(0xFF981DB9),
                    Color(0xFF0F76CE),
                  ],
                ),
                radius: const Radius.circular(12),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 10),
                    ImageIcon(
                      AssetImage(
                        'assets/images/neurology.png',
                      ),
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(width: 45),
                    Text(
                      'Psicológica',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'OUTFIT',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                onTap: () => Navigator.pushNamed(context, 'avapsiPage'),
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 295,
              child: OutlineGradientButton(
                strokeWidth: 1,
                gradient: const LinearGradient(
                  colors: <Color>[
                    Color(0xFF981DB9),
                    Color(0xFF0F76CE),
                  ],
                ),
                radius: const Radius.circular(12),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 10),
                    ImageIcon(
                      AssetImage('assets/images/exercise.png'),
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(width: 80),
                    Text(
                      'Física',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'OUTFIT',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 295,
              child: OutlineGradientButton(
                strokeWidth: 1,
                gradient: const LinearGradient(
                  colors: <Color>[
                    Color(0xFF981DB9),
                    Color(0xFF0F76CE),
                  ],
                ),
                radius: const Radius.circular(12),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 10),
                    ImageIcon(
                      AssetImage('assets/images/sprint.png'),
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(width: 70),
                    Text(
                      'Tática',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'OUTFIT',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
