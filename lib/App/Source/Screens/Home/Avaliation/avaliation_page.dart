import 'package:dess/App/Source/Core/components.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class AvaliationPage extends StatefulWidget {
  const AvaliationPage({super.key});

  @override
  State<AvaliationPage> createState() => _AvaliationPageState();
}

class _AvaliationPageState extends State<AvaliationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 20,
          ),
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
        title: Text(
          'Avaliações',
          style: comp20Str(),
        ),
      ),
      body: Stack(
        children: [
          const GradientBack(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 170),
                Container(
                  width: 315,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                    border: GradientBoxBorder(
                      gradient: gradientLk(),
                    ),
                  ),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      foregroundColor: const Color(0xFF981DB9),
                      side: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    onPressed: () => Navigator.pushNamed(context, 'avatecPage'),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 5),
                          const Icon(
                            Icons.sports_soccer,
                            color: Colors.white,
                            size: 25,
                          ),
                          const SizedBox(width: 60),
                          Text(
                            'Técnica',
                            style: comp25Out(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: 315,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                    border: GradientBoxBorder(
                      gradient: gradientLk(),
                    ),
                  ),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      foregroundColor: const Color(0xFF981DB9),
                      side: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    onPressed: () => Navigator.pushNamed(context, 'avapsiPage'),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 5),
                          const ImageIcon(
                            AssetImage('assets/images/neurology.png'),
                            color: Colors.white,
                            size: 20,
                          ),
                          const SizedBox(width: 50),
                          Text(
                            'Psicológica',
                            style: comp25Out(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: 315,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                    border: GradientBoxBorder(
                      gradient: gradientLk(),
                    ),
                  ),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      foregroundColor: const Color(0xFF981DB9),
                      side: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    onPressed: () => Navigator.pushNamed(context, 'avafisPage'),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 5),
                          const ImageIcon(
                            AssetImage('assets/images/exercise.png'),
                            color: Colors.white,
                            size: 20,
                          ),
                          const SizedBox(width: 75),
                          Text(
                            'Física',
                            style: comp25Out(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: 315,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                    border: GradientBoxBorder(
                      gradient: gradientLk(),
                    ),
                  ),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      foregroundColor: const Color(0xFF981DB9),
                      side: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    onPressed: () => Navigator.pushNamed(context, 'avatatPage'),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 5),
                          const ImageIcon(
                            AssetImage('assets/images/sprint.png'),
                            color: Colors.white,
                            size: 20,
                          ),
                          const SizedBox(width: 70),
                          Text(
                            'Tática',
                            style: comp25Out(),
                          ),
                        ],
                      ),
                    ),
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
