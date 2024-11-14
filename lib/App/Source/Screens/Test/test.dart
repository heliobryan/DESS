import 'package:dess/App/Source/Core/Components/AvaliationComponents/questionnaire.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QuestCard(
              onSave: (double nota) {},
              question: '',
              options: [],
            ),
          ],
        ),
      ),
    );
  }
}
