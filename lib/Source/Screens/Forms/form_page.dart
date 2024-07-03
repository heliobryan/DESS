import 'package:flutter/material.dart';

class Form1Page extends StatelessWidget {
  const Form1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Center(
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
    );
  }
}

class Form2Page extends StatelessWidget {
  const Form2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Center(
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
              icon:
                  const Image(image: AssetImage('assets/images/vetorfla.png')),
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
    );
  }
}

class Form3Page extends StatelessWidget {
  const Form3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Center(
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
    );
  }
}
