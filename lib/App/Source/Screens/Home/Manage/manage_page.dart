import 'package:dess/App/Source/Core/components.dart';
import 'package:dess/App/Source/Screens/Register/initial_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class ManagePage extends StatefulWidget {
  const ManagePage({super.key});

  @override
  State<ManagePage> createState() => _ManagePageState();
}

class _ManagePageState extends State<ManagePage> {
  final _firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GradientBack(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 115),
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
                        'Carreira',
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
              const SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 330,
                    height: 129,
                    child: OutlineGradientButton(
                      radius: const Radius.circular(12),
                      strokeWidth: 1,
                      gradient: const LinearGradient(
                        colors: <Color>[
                          Color(0xFF981DB9),
                          Color(0xFF0F76CE),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image:
                                AssetImage('assets/images/editorgradient.png'),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10),
                              const Text(
                                'Gestão de Imagem',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'OUTFIT',
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: 193,
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
                                    'Melhores desempenhos',
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
                        ],
                      ),
                      onTap: () =>
                          Navigator.pushNamed(context, 'imageManagePage'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 330,
                    height: 129,
                    child: OutlineGradientButton(
                      radius: const Radius.circular(12),
                      strokeWidth: 1,
                      gradient: const LinearGradient(
                        colors: <Color>[
                          Color(0xFF981DB9),
                          Color(0xFF0F76CE),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage('assets/images/event.png'),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10),
                              const Text(
                                'Competições',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'OUTFIT',
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: 193,
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
                                    'Já foram jogadas',
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
                        ],
                      ),
                      onTap: () => Navigator.pushNamed(context, 'compPage'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 330,
                    height: 129,
                    child: OutlineGradientButton(
                      radius: const Radius.circular(12),
                      strokeWidth: 1,
                      gradient: const LinearGradient(
                        colors: <Color>[
                          Color(0xFF981DB9),
                          Color(0xFF0F76CE),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage('assets/images/cash.png'),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10),
                              const Text(
                                'Patrocínio',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'OUTFIT',
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: 193,
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
                                    'Propostas',
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
                        ],
                      ),
                      onTap: () => Navigator.pushNamed(context, 'sponsorPage'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 330,
                    height: 129,
                    child: OutlineGradientButton(
                      strokeWidth: 1,
                      radius: const Radius.circular(12),
                      gradient: const LinearGradient(
                        colors: <Color>[
                          Color(0xFF981DB9),
                          Color(0xFF0F76CE),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage('assets/images/health.png'),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10),
                              const Text(
                                'Saúde',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'OUTFIT',
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: 193,
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
                                    'Lesões ou Fraturas',
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
                        ],
                      ),
                      onTap: () => Navigator.pushNamed(
                        context,
                        'healthPage',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      backgroundColor: const Color(0xFF1E1E1E),
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
