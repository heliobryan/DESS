import 'package:dess/App/Source/Core/components.dart';
import 'package:dess/App/Source/Screens/Register/initial_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ImageManagePage extends StatefulWidget {
  const ImageManagePage({super.key});

  @override
  State<ImageManagePage> createState() => _ImageManagePageState();
}

class _ImageManagePageState extends State<ImageManagePage> {
  final _firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Stack(
        children: [
          const GradientBack(),
          Column(
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
                    onPressed: () {
                      signOut();
                    },
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
        ],
      ),
    );
  }

  signOut() async {
    await _firebaseAuth.signOut().then(
          (user) => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const InitialPage(),
            ),
          ),
        );
  }
}
