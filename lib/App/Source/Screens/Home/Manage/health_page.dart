import 'package:dess/App/Source/Core/Components/GlobalComponents/components.dart';
import 'package:flutter/material.dart';

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
        title: Text(
          'Saúde',
          style: comp20Str(),
        ),
      ),
      body: Stack(
        children: [
          const GradientBack(),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
