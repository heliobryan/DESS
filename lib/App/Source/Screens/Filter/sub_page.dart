import 'package:dess/App/Source/Core/Components/cards.dart';
import 'package:dess/App/Source/Core/Components/components.dart';
import 'package:dess/App/Source/Screens/Home/Home/home_page.dart';
import 'package:flutter/material.dart';

class Form3Page extends StatefulWidget {
  const Form3Page({super.key});

  @override
  State<Form3Page> createState() => _Form3PageState();
}

class _Form3PageState extends State<Form3Page> {
  final controller = PageController(initialPage: 0);

  void _onCategorySelected(String category) {
    // Navegar para a HomePage passando a categoria selecionada
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
