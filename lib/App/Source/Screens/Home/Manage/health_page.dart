import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class HealthPage extends StatelessWidget {
  const HealthPage({super.key});

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
        backgroundColor: const Color(0xFF1E1E1E),
        title: const Text(
          'Saúde',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'STRETCH',
          ),
        ),
      ),
      body: Center(
        child: Column(
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
        backgroundColor: const Color(0xFF1E1E1E),
        title: const Text(
          'Saúde',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'STRETCH',
          ),
        ),
      ),
      body: Center(
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
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
