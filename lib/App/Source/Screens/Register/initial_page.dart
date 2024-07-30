import 'package:dess/App/Source/Core/components.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

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
                Text(
                  'Seja bem vindo ao ',
                  style: comp20Str(),
                ),
                const SizedBox(height: 10),
                const Image(
                  image: AssetImage('assets/images/desInitial.png'),
                ),
                const SizedBox(height: 10),
                Text(
                  'Aprimore seu desempenho',
                  style: comp15Str(),
                ),
                const SizedBox(height: 100),
                Column(
                  children: [
                    Text(
                      'O nosso app (DES) visa desenvolver um aplicativo',
                      style: comp15Out(),
                    ),
                    Text(
                      'mobile que auxilie escolas esportivas,',
                      style: comp15Out(),
                    ),
                    Text(
                      'responsáveis, profissionais esporte, esportistas',
                      style: comp15Out(),
                    ),
                    Text(
                      'de diversas modalidades no acompanhamento e',
                      style: comp15Out(),
                    ),
                    Text(
                      'aprimoramento de seu desempenho.',
                      style: comp15Out(),
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
                  child: Text(
                    '  CADASTRE-SE AGORA  ',
                    style: comp15Str(),
                  ),
                  onPressed: () => Navigator.pushNamed(context, 'registerPage'),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.transparent,
                  ),
                  child: Text(
                    'Já tem uma conta? Entrar',
                    style: comp16Out(),
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
