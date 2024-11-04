import 'package:dess/App/Source/Core/Components/components.dart';
import 'package:flutter/material.dart';

class ImageManagePage extends StatefulWidget {
  const ImageManagePage({super.key});

  @override
  State<ImageManagePage> createState() => _ImageManagePageState();
}

class _ImageManagePageState extends State<ImageManagePage> {
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
                  Column(
                    children: [
                      Text(
                        'Gestão de',
                        style: comp20Str(),
                      ),
                      Text(
                        'Imagem',
                        style: comp20Str(),
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
                    onPressed: () => showDialog(
                      context: context,
                      builder: (BuildContext context) => const ExitButton(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Text(
                'Melhores desempenhos',
                style: comp20Out(),
              ),
              const SizedBox(height: 130),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Artilheiro - Jogos Escolares de Minas Gerais',
                        style: comp13Out(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Image(
                      image: AssetImage('assets/images/gradientline.png')),
                  const SizedBox(height: 10),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        'Melhor Jogador da Final - Copa da Amizade',
                        style: comp13Out(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Image(
                      image: AssetImage('assets/images/gradientline.png')),
                  const SizedBox(height: 10),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                      const SizedBox(width: 13),
                      Text(
                        'Artilheiro - Copa Menino Maluquinho',
                        style: comp13Out(),
                      ),
                      const SizedBox(width: 40),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Image(
                    image: AssetImage('assets/images/gradientline.png'),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        'Melhor Jogador da Final - Copa da Amizade',
                        style: comp13Out(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Image(
                      image: AssetImage('assets/images/gradientline.png')),
                  const SizedBox(height: 10),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
