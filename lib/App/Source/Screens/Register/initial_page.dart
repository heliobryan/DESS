import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Stack(
        children: [
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
                  onPressed: () => Navigator.pushNamed(context, 'registerPage'),
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
                  onPressed: () => Navigator.pushNamed(context, 'loginPage'),
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
