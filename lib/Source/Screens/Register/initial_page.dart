import 'dart:ui';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

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
                  filter: ImageFilter.blur(sigmaX: 100, sigmaY: 150),
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
                    width: 146,
                    height: 146,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color.fromARGB(151, 5, 105, 193),
                          Color(0xff0f76ce1a),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 600, sigmaY: 600),
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
                  'Seja bem vindo ao ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'STRETCH',
                  ),
                ),
                const SizedBox(height: 10),
                const Image(
                  image: AssetImage('assets/images/desInitial.png'),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Aprimore seu desempenho',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'STRETCH',
                  ),
                ),
                const SizedBox(height: 100),
                const Column(
                  children: [
                    Text(
                      'O nosso app (DES) visa desenvolver um aplicativo',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OUTFIT',
                      ),
                    ),
                    Text(
                      'mobile que auxilie escolas esportivas,',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OUTFIT',
                      ),
                    ),
                    Text(
                      'responsáveis, profissionais esporte, esportistas',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OUTFIT',
                      ),
                    ),
                    Text(
                      'de diversas modalidades no acompanhamento e',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OUTFIT',
                      ),
                    ),
                    Text(
                      'aprimoramento de seu desempenho.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OUTFIT',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 100),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: const Color(0xFF981DB9),
                  ),
                  child: const Text(
                    '  CADASTRE-SE AGORA  ',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'STRETCH',
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.transparent,
                  ),
                  child: const Text(
                    'Já tem uma conta? Entrar',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'OUTFIT',
                    ),
                  ),
                  onPressed: () {},
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
