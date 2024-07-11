import 'package:flutter/material.dart';

class ImageManagePage extends StatelessWidget {
  const ImageManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 20,
                  ),
                  onPressed: () => Navigator.pop(context, 'managePage'),
                ),
                const SizedBox(width: 70),
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
                      'Imagem',
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
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 5),
            const Text(
              'Melhores desempenhos',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'OUTFIT',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 130),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Artilheiro - Jogos Escolares de Minas Gerais',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontFamily: 'OUTFIT',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Image(image: AssetImage('assets/images/gradientline.png')),
                SizedBox(height: 10),
              ],
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                    SizedBox(width: 6),
                    Text(
                      'Melhor Jogador da Final - Copa da Amizade',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontFamily: 'OUTFIT',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Image(image: AssetImage('assets/images/gradientline.png')),
                SizedBox(height: 10),
              ],
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                    SizedBox(width: 13),
                    Text(
                      'Artilheiro - Copa Menino Maluquinho',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontFamily: 'OUTFIT',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 40),
                  ],
                ),
                SizedBox(height: 10),
                Image(image: AssetImage('assets/images/gradientline.png')),
                SizedBox(height: 10),
              ],
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                    SizedBox(width: 6),
                    Text(
                      'Melhor Jogador da Final - Copa da Amizade',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontFamily: 'OUTFIT',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Image(image: AssetImage('assets/images/gradientline.png')),
                SizedBox(height: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
