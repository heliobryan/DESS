import 'package:dess/App/Source/Core/Components/Cards/cards.dart';
import 'package:dess/App/Source/Core/Components/GlobalComponents/components.dart';
import 'package:dess/App/Source/Screens/Home/Home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class Form3Page extends StatefulWidget {
  const Form3Page({super.key});

  @override
  State<Form3Page> createState() => _Form3PageState();
}

class _Form3PageState extends State<Form3Page> {
  final controller = PageController(initialPage: 0);

  void _onCategorySelected(String category) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(
          initialCategory: category,
          selectedcategory: '',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Stack(
        children: [
          const GradientBack(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 90),
                Text('QUAL FAIXA', style: comp20Str()),
                Text('ÉTARIA?', style: comp20Str()),
                const SizedBox(height: 90),
                Column(
                  children: [
                    AgeCard(
                      category: 'Sub-12',
                      onCategorySelected: _onCategorySelected,
                    ),
                    const SizedBox(height: 20),
                    AgeCard(
                      category: 'Sub-13',
                      onCategorySelected: _onCategorySelected,
                    ),
                    const SizedBox(height: 20),
                    AgeCard(
                      category: 'Sub-14',
                      onCategorySelected: _onCategorySelected,
                    ),
                    const SizedBox(height: 20),
                    AgeCard(
                      category: 'Sub-15',
                      onCategorySelected: _onCategorySelected,
                    ),
                    const SizedBox(height: 20),
                    AgeCard(
                      category: 'Sub-16',
                      onCategorySelected: _onCategorySelected,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AgeCard extends StatefulWidget {
  final String category;
  final Function(String) onCategorySelected;

  const AgeCard({
    super.key,
    required this.category,
    required this.onCategorySelected,
  });

  @override
  State<AgeCard> createState() => _AgeCardState();
}

class _AgeCardState extends State<AgeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 341,
      height: 62,
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
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          foregroundColor: const Color(0xFF981DB9),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          side: const BorderSide(color: Colors.transparent),
        ),
        child: Center(
          child: Text(
            widget.category,
            style: comp40Out(),
          ),
        ),
        onPressed: () {
          widget.onCategorySelected(widget.category);
        },
      ),
    );
  }
}
