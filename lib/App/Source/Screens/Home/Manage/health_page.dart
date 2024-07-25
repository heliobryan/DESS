import 'package:dess/App/Source/Core/components.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class HealthPage extends StatefulWidget {
  const HealthPage({super.key});

  @override
  State<HealthPage> createState() => _HealthPageState();
}

class _HealthPageState extends State<HealthPage> {
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
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => const ExitButton(),
            ),
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
                    const SizedBox(height: 30),
                    Container(
                      width: 330,
                      height: 129,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                        border: GradientBoxBorder(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF981DB9),
                              Color(0xFF0F76CE),
                            ],
                          ),
                        ),
                      ),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.transparent),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(width: 20),
                            Column(
                              children: [
                                const SizedBox(height: 10),
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
                            const SizedBox(width: 50),
                            const Column(
                              children: [
                                SizedBox(height: 10),
                                Text(
                                  'Lesão',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'STRETCH',
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Entorse de Tornozelo',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'OUTFIT',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  '31/03/23',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'OUTFIT',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  'a 07/04/23 (7 dias)',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'OUTFIT',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      width: 330,
                      height: 129,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                        border: GradientBoxBorder(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF981DB9),
                              Color(0xFF0F76CE),
                            ],
                          ),
                        ),
                      ),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.transparent),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(width: 20),
                            Column(
                              children: [
                                const SizedBox(height: 10),
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
                            const SizedBox(width: 50),
                            const Column(
                              children: [
                                SizedBox(height: 10),
                                Text(
                                  'Lesão',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'STRETCH',
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Entorse de Tornozelo',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'OUTFIT',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  '31/03/23',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'OUTFIT',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  'a 07/04/23 (7 dias)',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'OUTFIT',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      width: 330,
                      height: 129,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                        border: GradientBoxBorder(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF981DB9),
                              Color(0xFF0F76CE),
                            ],
                          ),
                        ),
                      ),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.transparent),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(width: 20),
                            Column(
                              children: [
                                const SizedBox(height: 10),
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
                            const SizedBox(width: 50),
                            const Column(
                              children: [
                                SizedBox(height: 10),
                                Text(
                                  'Lesão',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'STRETCH',
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Entorse de Tornozelo',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'OUTFIT',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  '31/03/23',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'OUTFIT',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  'a 07/04/23 (7 dias)',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'OUTFIT',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      width: 330,
                      height: 129,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                        border: GradientBoxBorder(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF981DB9),
                              Color(0xFF0F76CE),
                            ],
                          ),
                        ),
                      ),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.transparent),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(width: 20),
                            Column(
                              children: [
                                const SizedBox(height: 10),
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
                            const SizedBox(width: 50),
                            const Column(
                              children: [
                                SizedBox(height: 10),
                                Text(
                                  'Lesão',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'STRETCH',
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Entorse de Tornozelo',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'OUTFIT',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  '31/03/23',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'OUTFIT',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  'a 07/04/23 (7 dias)',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'OUTFIT',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
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
}

class HealthEditor extends StatefulWidget {
  const HealthEditor({super.key});

  @override
  State<HealthEditor> createState() => _HealthEditorState();
}

class _HealthEditorState extends State<HealthEditor> {
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
