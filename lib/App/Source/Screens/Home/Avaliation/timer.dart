import 'package:dess/App/Source/Core/components.dart';
import 'package:dess/App/Source/Screens/Register/initial_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class StopTimePage extends StatefulWidget {
  const StopTimePage({super.key});

  @override
  State<StopTimePage> createState() => _StopTimePageState();
}

class _StopTimePageState extends State<StopTimePage> {
  final _firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 25,
          ),
          onPressed: () => Navigator.pop(context, 'avaliationPage'),
        ),
        title: const Text(
          'Física',
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
            onPressed: () {
              signOut;
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          const GradientBack(),
          const BackgroudImage(),
          Column(
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
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.transparent,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                              ),
                              side: const BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            child: const Text(
                              'Força',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'OUTFIT',
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
                          ),
                        ],
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
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.transparent,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                              ),
                              side: const BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            child: const Text(
                              'Velocidade',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'OUTFIT',
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
                          ),
                        ],
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
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.transparent,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                              ),
                              side: const BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            child: const Text(
                              'Flexibilidade',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'OUTFIT',
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const Text(
                'Atacante - Sub 13 - Society',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'OUTFIT',
                  fontWeight: FontWeight.bold,
                ),
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
              const Column(
                children: [],
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
