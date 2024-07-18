import 'package:dess/App/Source/Core/components.dart';
import 'package:dess/App/Source/Screens/Register/initial_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SponsorPage extends StatefulWidget {
  const SponsorPage({super.key});

  @override
  State<SponsorPage> createState() => _SponsorPageState();
}

class _SponsorPageState extends State<SponsorPage> {
  final _firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
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
          'Patrocínio',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'STRETCH',
          ),
        ),
      ),
      body: Stack(
        children: [
          const GradientBack(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text(
                'Propostas',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'OUTFIT',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 120),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 50),
                      Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Adidas',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OUTFIT',
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Image(
                      image: AssetImage('assets/images/gradientline.png')),
                  const SizedBox(height: 15),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 50),
                      Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Adidas',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OUTFIT',
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Image(
                      image: AssetImage('assets/images/gradientline.png')),
                  const SizedBox(height: 15),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 50),
                      Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Adidas',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OUTFIT',
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Image(
                      image: AssetImage('assets/images/gradientline.png')),
                  const SizedBox(height: 15),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 50),
                      Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Adidas',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OUTFIT',
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 35),
                  SizedBox(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1E1E1E),
                          foregroundColor: const Color(0xFF1E1E1E)),
                      child: Container(
                        width: 335,
                        height: 40,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF981DB9),
                              Color(0xFF0F76CE),
                            ],
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Salvar',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'OUTFIT',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
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
