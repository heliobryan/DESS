import 'package:flutter/material.dart';
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
          onPressed: () => Navigator.popAndPushNamed(context, 'homePage'),
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
                  colors: <Color>[Color(0xFF981DB9), Color(0xFF0F76CE)],
                ),
                child: const Row(
                  children: [],
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
                  colors: <Color>[Color(0xFF981DB9), Color(0xFF0F76CE)],
                ),
                child: const Row(
                  children: [],
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
                  colors: <Color>[Color(0xFF981DB9), Color(0xFF0F76CE)],
                ),
                child: const Row(
                  children: [],
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
                  colors: <Color>[Color(0xFF981DB9), Color(0xFF0F76CE)],
                ),
                child: const Row(
                  children: [],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
