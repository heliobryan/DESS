import 'package:dess/App/Source/Core/components.dart';
import 'package:dess/App/Source/Screens/Register/initial_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class CompPage extends StatefulWidget {
  const CompPage({super.key});

  @override
  State<CompPage> createState() => _CompPageState();
}

class _CompPageState extends State<CompPage> {
  final _firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () => Navigator.pop(context, 'managePage'),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.exit_to_app_outlined,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              signOut();
            },
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Competições',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'STRETCH',
          ),
        ),
      ),
      backgroundColor: const Color(0xFF1E1E1E),
      body: Stack(
        children: [
          const GradientBack(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const Text(
                'Jogadas',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'OUTFIT',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        children: [
                          Text(
                            'Jogos Escolares de',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'OUTFIT',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            ' Minas Gerais-JEMG',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'OUTFIT',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 77,
                        height: 16,
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
                            'Programação',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'OUTFIT',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 77,
                        height: 16,
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
                            'Listas',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'OUTFIT',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Image(
                      image: AssetImage('assets/images/gradientline.png'))
                ],
              ),
              const SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        children: [
                          Text(
                            'Copa da Amizade',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'OUTFIT',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 25),
                      Container(
                        width: 77,
                        height: 16,
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
                            'Programação',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'OUTFIT',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 77,
                        height: 16,
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
                            'Listas',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'OUTFIT',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Image(
                      image: AssetImage('assets/images/gradientline.png'))
                ],
              ),
              const SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        children: [
                          Text(
                            'Copa Menino',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'OUTFIT',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Maluquinho',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'OUTFIT',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 50),
                      Container(
                        width: 77,
                        height: 16,
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
                            'Programação',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'OUTFIT',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 77,
                        height: 16,
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
                            'Listas',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'OUTFIT',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Image(
                      image: AssetImage('assets/images/gradientline.png'))
                ],
              ),
              const SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        children: [
                          Text(
                            'Jogos Estudantis',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'OUTFIT',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'De Caratinga',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'OUTFIT',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Container(
                        width: 77,
                        height: 16,
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
                            'Programação',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'OUTFIT',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 77,
                        height: 16,
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
                            'Listas',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'OUTFIT',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Image(
                      image: AssetImage('assets/images/gradientline.png'))
                ],
              ),
              const SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        children: [
                          Text(
                            'Copa Uzipa',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'OUTFIT',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 60),
                      Container(
                        width: 77,
                        height: 16,
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
                            'Programação',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'OUTFIT',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 77,
                        height: 16,
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
                            'Listas',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'OUTFIT',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Image(
                      image: AssetImage('assets/images/gradientline.png'))
                ],
              ),
              const SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        children: [
                          Text(
                            'Copa Caratinga',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'OUTFIT',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 35),
                      Container(
                        width: 77,
                        height: 16,
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
                            'Programação',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'OUTFIT',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 77,
                        height: 16,
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
                            'Listas',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'OUTFIT',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Image(
                      image: AssetImage('assets/images/gradientline.png'))
                ],
              ),
              const SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        children: [
                          Text(
                            'Jogos Escolares de',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'OUTFIT',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            ' Minas Gerais-JEMG',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'OUTFIT',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 77,
                        height: 16,
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
                            'Programação',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'OUTFIT',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 77,
                        height: 16,
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
                            'Listas',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'OUTFIT',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
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
