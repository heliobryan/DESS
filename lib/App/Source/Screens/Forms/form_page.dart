import 'package:dess/App/Source/Core/CardComponents/cards.dart';
import 'package:dess/App/Source/Core/components.dart';
import 'package:dess/App/Source/Screens/Home/home_page.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: controller,
      children: const [
        Form1Page(),
        Form2Page(),
        Form3Page(),
      ],
    );
  }
}

class Form1Page extends StatefulWidget {
  const Form1Page({super.key});

  @override
  State<Form1Page> createState() => _Form1PageState();
}

class _Form1PageState extends State<Form1Page> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Stack(
        children: [
          const GradientBack(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'QUAL ESPORTE',
                  style: comp20Str(),
                ),
                Text(
                  'VOCÊ DA TREINO?',
                  style: comp20Str(),
                ),
                const SizedBox(height: 10),
                IconButton(
                  style: IconButton.styleFrom(
                    foregroundColor: const Color(0xFF981DB9),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                  ),
                  icon: const Image(
                      image: AssetImage('assets/images/formvetor2.png')),
                  onPressed: () => controller.animateToPage(
                    1,
                    curve: Curves.easeInOut,
                    duration: const Duration(seconds: 1),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'FUTEBOL',
                  style: comp15Str(),
                ),
                const SizedBox(height: 5),
                IconButton(
                  style: IconButton.styleFrom(
                    foregroundColor: const Color(0xFF981DB9),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                  ),
                  icon: const Image(
                      image: AssetImage('assets/images/formvetor1.png')),
                  onPressed: () {},
                ),
                const SizedBox(height: 5),
                Text(
                  'BASQUETE',
                  style: comp15Str(),
                ),
                const SizedBox(height: 5),
                IconButton(
                  style: IconButton.styleFrom(
                    foregroundColor: const Color(0xFF981DB9),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                  ),
                  icon: const Image(
                      image: AssetImage('assets/images/formvetor3.png')),
                  onPressed: () {},
                ),
                const SizedBox(height: 5),
                Text(
                  'VÔLEI',
                  style: comp15Str(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Form2Page extends StatefulWidget {
  const Form2Page({super.key});

  @override
  State<Form2Page> createState() => _Form2PageState();
}

class _Form2PageState extends State<Form2Page> {
  final controller = PageController(
    initialPage: 0,
  );
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
                const SizedBox(height: 70),
                Text(
                  'QUAL ESCOLA',
                  style: comp20Str(),
                ),
                Text(
                  'VOCÊ DA TREINO?',
                  style: comp20Str(),
                ),
                const SizedBox(height: 180),
                IconButton(
                  style: IconButton.styleFrom(
                    foregroundColor: const Color(0xFF981DB9),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                  ),
                  icon: const Image(
                      image: AssetImage('assets/images/vetorfla.png')),
                  onPressed: () {},
                ),
                Text(
                  'Escola',
                  style: comp15Str(),
                ),
                Text(
                  'Flamengo',
                  style: comp15Str(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

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
                      category: 'Sub-17',
                      onCategorySelected: _onCategorySelected,
                    ),
                    const SizedBox(height: 20),
                    AgeCard(
                      category: 'Sub-11',
                      onCategorySelected: _onCategorySelected,
                    ),
                    const SizedBox(height: 20),
                    AgeCard(
                      category: 'Sub-12',
                      onCategorySelected: _onCategorySelected,
                    ),
                    const SizedBox(height: 20),
                    AgeCard(
                      category: 'Sub-13',
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
