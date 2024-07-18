import 'package:dess/App/Source/Core/components.dart';
import 'package:dess/App/Source/Screens/Register/initial_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class HealthPage extends StatefulWidget {
  const HealthPage({super.key});

  @override
  State<HealthPage> createState() => _HealthPageState();
}

class _HealthPageState extends State<HealthPage> {
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
          'Saúde',
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
          Center(
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Lesões ou Fraturas',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OUTFIT',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                const Text(
                                  'Status',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontFamily: 'OUTFIT',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: const Color(0xFF00FF38),
                                      width: 5.0,
                                    ),
                                    color: Colors.transparent,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  'Recuperado',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'OUTFIT',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                const Text(
                                  'Status',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontFamily: 'OUTFIT',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: const Color(0xFF00FF38),
                                      width: 5.0,
                                    ),
                                    color: Colors.transparent,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  'Recuperado',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'OUTFIT',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
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
                        onTap: () => Navigator.pushNamed(
                          context,
                          'cardPage',
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                const Text(
                                  'Status',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontFamily: 'OUTFIT',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: const Color(0xFF00FF38),
                                      width: 5.0,
                                    ),
                                    color: Colors.transparent,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  'Recuperado',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'OUTFIT',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                const Text(
                                  'Status',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontFamily: 'OUTFIT',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: const Color(0xFFE70000),
                                      width: 5.0,
                                    ),
                                    color: Colors.transparent,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  'Em recuperação',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: 'OUTFIT',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
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

class HealthCard extends StatefulWidget {
  const HealthCard({super.key});

  @override
  State<HealthCard> createState() => _HealthCardState();
}

class _HealthCardState extends State<HealthCard> {
  bool cardColor = true;

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
            onPressed: () {},
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Saúde',
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
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Lesões ou Fraturas',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OUTFIT',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Container(
                  width: 339,
                  height: 370,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    border: GradientBoxBorder(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF981DB9),
                          Color(0xFF0F76CE),
                        ],
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 50),
                      Container(
                        width: 106,
                        height: 106,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: (cardColor)
                                ? const Color(0xFF00FF38)
                                : const Color(0xFFE70000),
                            width: 5.0,
                          ),
                          color: Colors.transparent,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Lesão',
                        style: TextStyle(
                          fontFamily: 'STRETCH',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Detalhe da lesão',
                        style: TextStyle(
                          fontFamily: 'OUTFIT',
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'Data da lesão',
                        style: TextStyle(
                          fontFamily: 'OUTFIT',
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Status',
                        style: TextStyle(
                          fontFamily: 'STRETCH',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                                      'Recuperado',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontFamily: 'OUTFIT',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        cardColor = !cardColor;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
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
                                      'Em recup.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontFamily: 'OUTFIT',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        cardColor = !cardColor;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
